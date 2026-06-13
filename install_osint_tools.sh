#!/bin/bash
# OSINT Tools Global Installation Script
# Installs: sherlock, theHarvester, spiderfoot, metagoofil, blackbird

set -e

INSTALL_DIR="/opt/osint-tools"
mkdir -p "$INSTALL_DIR"

echo "[*] Installing system build dependencies..."
apt-get install -y git python3 python3-pip python3.12 build-essential libssl-dev python3-dev 2>/dev/null || true

echo "[*] Cloning OSINT tool repositories..."
[ ! -d "$INSTALL_DIR/sherlock" ]     && git clone https://github.com/sherlock-project/sherlock     "$INSTALL_DIR/sherlock"
[ ! -d "$INSTALL_DIR/theHarvester" ] && git clone https://github.com/laramies/theHarvester         "$INSTALL_DIR/theHarvester"
[ ! -d "$INSTALL_DIR/spiderfoot" ]   && git clone https://github.com/smicallef/spiderfoot          "$INSTALL_DIR/spiderfoot"
[ ! -d "$INSTALL_DIR/metagoofil" ]   && git clone https://github.com/opsdisk/metagoofil            "$INSTALL_DIR/metagoofil"
[ ! -d "$INSTALL_DIR/blackbird" ]    && git clone https://github.com/p1ngul1n0/blackbird            "$INSTALL_DIR/blackbird"

echo "[*] Installing Sherlock (Python 3.11)..."
pip3 install --no-deps "$INSTALL_DIR/sherlock"
pip3 install requests-futures tomli PySocks colorama pandas openpyxl certifi

echo "[*] Installing theHarvester (requires Python 3.12)..."
python3.12 -m pip install --break-system-packages --no-deps "$INSTALL_DIR/theHarvester"
python3.12 -m pip install --break-system-packages \
    anyio netaddr ujson aiomultiprocess aiohttp-socks aiosqlite aiodns censys \
    aiohttp certifi beautifulsoup4 PyYAML python-dateutil playwright uvloop

# Install shodan (has setuptools build issue — copy manually)
if ! python3.12 -c "import shodan" 2>/dev/null; then
    pip3 download shodan --no-deps -d /tmp/shodan_dl/
    cd /tmp && tar -xzf shodan_dl/shodan-*.tar.gz
    SHODAN_DIR=$(ls -d /tmp/shodan-*)
    cp -r "$SHODAN_DIR/shodan" /usr/local/lib/python3.12/dist-packages/ 2>/dev/null || \
    cp -r "$SHODAN_DIR/shodan" /usr/lib/python3/dist-packages/
fi

echo "[*] Installing SpiderFoot dependencies (Python 3.11)..."
grep -v -E "^(ipaddr|pygexf)" "$INSTALL_DIR/spiderfoot/requirements.txt" | \
    pip3 install -r /dev/stdin --ignore-installed 2>/dev/null || true

echo "[*] Installing metagoofil dependencies..."
pip3 install -r "$INSTALL_DIR/metagoofil/requirements.txt"

echo "[*] Installing blackbird dependencies..."
pip3 install -r "$INSTALL_DIR/blackbird/requirements.txt"

echo "[*] Creating global wrapper scripts in /usr/local/bin/..."

cat > /usr/local/bin/theHarvester << 'WRAPPER'
#!/usr/bin/env python3.12
from theHarvester.theHarvester import main
main()
WRAPPER

cat > /usr/local/bin/spiderfoot << 'WRAPPER'
#!/bin/bash
python3 /opt/osint-tools/spiderfoot/sf.py "$@"
WRAPPER

cat > /usr/local/bin/metagoofil << 'WRAPPER'
#!/bin/bash
python3 /opt/osint-tools/metagoofil/metagoofil.py "$@"
WRAPPER

cat > /usr/local/bin/blackbird << 'WRAPPER'
#!/bin/bash
python3 /opt/osint-tools/blackbird/blackbird.py "$@"
WRAPPER

chmod +x /usr/local/bin/theHarvester /usr/local/bin/spiderfoot \
          /usr/local/bin/metagoofil /usr/local/bin/blackbird

echo ""
echo "[+] Installation complete. Installed tools:"
echo "    sherlock      -> $(which sherlock)"
echo "    theHarvester  -> $(which theHarvester)"
echo "    spiderfoot    -> $(which spiderfoot)"
echo "    metagoofil    -> $(which metagoofil)"
echo "    blackbird     -> $(which blackbird)"
