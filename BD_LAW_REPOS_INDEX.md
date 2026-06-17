# Bangladeshi Law Repositories — Installed Index

**Purpose:** Reference index for all Bangladesh law repositories and law texts installed for the  
Hangeul Korean Language & Visa / WeCare Education Consultancy fraud investigation.

**Installation date:** 2026-06-17  
**Base path:** `/opt/bd-law-repos/`

---

## Installed Repositories

### 1. Bangladesh-Legal-Acts-Dataset
**Path:** `/opt/bd-law-repos/Bangladesh-Legal-Acts-Dataset/`  
**Source:** https://github.com/sakhadib/Bangladesh-Legal-Acts-Dataset  
**Description:** All of Bangladesh's laws and acts published by the Government, structured in JSON format.  
Contains **1,484 individual act files** pulled via Git LFS from bdlaws.minlaw.gov.bd.  
Each file: `Data/acts/act-print-{ID}.json` with fields: `act_title`, `act_no`, `act_year`, `sections[]`.

**Case-relevant acts confirmed present:**

| Act | File | Sections | Size |
|-----|------|----------|------|
| Penal Code, 1860 | `act-print-11.json` | 583 | 392 KB |
| Evidence Act, 1872 | `act-print-24.json` | 202 | 167 KB |
| Code of Criminal Procedure, 1898 | `act-print-75.json` | 586 | 552 KB |
| Prevention of Corruption Act, 1947 | `act-print-217.json` | 8 | 12 KB |
| Foreign Exchange Regulation Act, 1947 | `act-print-218.json` | 32 | 62 KB |
| Partnership Act, 1932 | `act-print-157.json` | 81 | 49 KB |
| Special Powers Act, 1974 | `act-print-462.json` | 44 | 46 KB |
| VAT and Supplementary Duty Act, 2012 | `act-print-1106.json` | 147 | 495 KB |
| Anti-Terrorism Act, 2009 | `act-print-1045.json` | — | — |

**Note:** Text is in Bengali (Bangla script). English versions available at bdlaws.minlaw.gov.bd.

---

### 2. bd-legal-rag
**Path:** `/opt/bd-law-repos/bd-legal-rag/`  
**Source:** https://github.com/mralaminahamed/bd-legal-rag  
**Description:** Bilingual Bengali/English RAG service over Bangladesh statute law. Contains YAML  
configuration files for 16 key acts with source URLs.

**Acts configured (YAML in `config/acts/`):**

| YAML File | Act | Case Relevance |
|-----------|-----|----------------|
| `vat-sd-act-2012.yaml` | VAT and SD Act, 2012 | 🔴 PRIMARY — VAT evasion charge |
| `digital-security-act-2018.yaml` | Digital Security Act, 2018 | 🔴 PRIMARY — false online advertising |
| `penal-code-1860.yaml` | Penal Code, 1860 | 🔴 PRIMARY — fraud/cheating (S.420) |
| `code-of-criminal-procedure-1898.yaml` | CrPC, 1898 | 🟡 SUPPORT — FIR procedure |
| `income-tax-act-2023.yaml` | Income Tax Act, 2023 | 🟡 SUPPORT — tax evasion |
| `companies-act-1994.yaml` | Companies Act, 1994 | 🟡 SUPPORT — RJSC non-registration |
| `evidence-act-1872.yaml` | Evidence Act, 1872 | 🟡 SUPPORT — digital evidence admissibility |
| `negotiable-instruments-act-1881.yaml` | Negotiable Instruments Act, 1881 | 🟡 SUPPORT — Hundi/cheque fraud |
| `labour-act-2006.yaml` | Labour Act, 2006 | 🟢 SECONDARY |
| `constitution-of-bangladesh-1972.yaml` | Constitution of Bangladesh, 1972 | 🟢 SECONDARY |
| `contract-act-1872.yaml` | Contract Act, 1872 | 🟢 SECONDARY — breach of service contract |
| `partnership-act-1932.yaml` | Partnership Act, 1932 | 🟢 SECONDARY |

**Full acts index:** `config/bdlaws-acts-index.json` — 1,556 acts catalogued with IDs and URLs.

---

### 3. Advanced-RAG-BD-Law (22+ Legal PDFs)
**Path:** `/opt/bd-law-repos/Advanced-RAG-BD-Law/`  
**Source:** https://github.com/Raiyan27/Advanced-RAG-System-with-Agentic-Workflow  
**Description:** 22+ Bangladesh law PDFs ready for AI processing.

**Case-relevant PDFs in `data/`:**

| File | Relevance |
|------|-----------|
| `Basic-view-of-Penal-Code-and-CRPC_250625_130448.pdf` | 🔴 Penal Code + CrPC overview |
| `Company Law (bangla).pdf` | 🟡 Company registration fraud |
| `constitution_of_BD.pdf` | 🟢 Fundamental rights reference |
| `The Code of Civil Procedure, 1908.pdf` | 🟢 Civil suit procedure |
| `A Guide to Cheque Dishonour Case...Negotiable Instruments Act 1881.pdf` | 🟡 Hundi/payment fraud |
| `The-RTI-Act-2009-EV_250206_210534.pdf` | 🟢 Right to Information (evidence requests) |
| `BANGLADESH_LAWS_REVISION_AND_DECLARATION_ACT_1973.pdf` | 🟢 Legal framework |

---

### 4. Bangladesh-Legal-Advisor-RAG
**Path:** `/opt/bd-law-repos/Bangladesh-Legal-Advisor-RAG/`  
**Source:** https://github.com/FaishalRudro/Bangladesh-Legal-Advisor-RAG_GROQ  
**Description:** AI legal advisory chatbot backed by 1,522 laws from bdlaws.minlaw.gov.bd.  
Full-stack application (Next.js frontend + FastAPI backend). Can be run locally for case-specific legal queries.

---

### 5. DigitalJustice-Engine
**Path:** `/opt/bd-law-repos/DigitalJustice-Engine/`  
**Source:** https://github.com/usufxrex/DigitalJustice-Engine  
**Description:** AI legal assistant specialized in Bangladesh Cyber Security Law.  
Covers Digital Security Act 2018 and Cyber Security Act 2023.

---

### 6. Cyber-Law-Reform-BD
**Path:** `/opt/bd-law-repos/Cyber-Law-Reform-BD/`  
**Source:** https://github.com/Mahim03/Proposed-Legal-Reform  
**Description:** Proposed legal reforms for Cyber Law in Bangladesh with analysis of current gaps.

---

### 7. Bangladesh-Land-Law-Treatise
**Path:** `/opt/bd-law-repos/bangladesh-land-law-treatise/`  
**Source:** https://github.com/Stories-with-afzal/bangladesh-land-law-treatise  
**Description:** Open-access compendium on land registration and property law. Less directly relevant  
to this case but useful for any office/address verification disputes.

---

## Extracted Case-Law Files

**Path:** `/opt/bd-law-repos/bd_case_laws/`

Pre-extracted text files ready for immediate reference:

| File | Act | Size | Notes |
|------|-----|------|-------|
| `11_Penal_Code_1860.txt` | Penal Code 1860 | 97 KB | Full text in Bangla |
| `24_Evidence_Act_1872.txt` | Evidence Act 1872 | 97 KB | Full text in Bangla |
| `75_Code_of_Criminal_Procedure_1898.txt` | CrPC 1898 | 97 KB | Full text in Bangla |
| `217_Prevention_of_Corruption_Act_1947.txt` | Prevention of Corruption 1947 | 7.5 KB | Full text |
| `218_Foreign_Exchange_Regulation_Act_1947.txt` | FERA 1947 | 51 KB | **HUNDI CHARGES** |
| `462_Special_Powers_Act_1974.txt` | Special Powers Act 1974 | 35 KB | Contraband/hoarding |
| `1106_VAT_and_Supplementary_Duty_Act_2012.txt` | VAT Act 2012 | 253 KB | **VAT EVASION** |
| `Anti_Terrorism_Act_2009.txt` | Anti-Terrorism Act 2009 | 79 KB | BFIU/financial terror |
| `CASE_RELEVANT_11_Penal_Code_1860.txt` | Penal Code — filtered | — | Fraud/cheating sections only |
| `CASE_RELEVANT_218_Foreign_Exchange_Regulation_Act_1947.txt` | FERA — filtered | — | Hundi/forex sections only |
| `CASE_RELEVANT_1106_VAT_and_Supplementary_Duty_Act_2012.txt` | VAT — filtered | — | Registration/penalty sections |

---

## Case Violation → Law Mapping

| Alleged Violation | Primary Act | Section | Penalty |
|-------------------|-------------|---------|---------|
| VAT non-registration / no Mushak-6.3 invoice | VAT and SD Act, 2012 (act-1106) | S.46, S.57 | Fine + imprisonment up to 5 years |
| False advertising / misleading service claims | Digital Security Act, 2018 (act-1261) | S.25, S.26 | Up to 3 years / BDT 3 lac |
| Cheating and fraud (visa/admission fraud) | Penal Code, 1860 (act-11) | S.420 | Up to 7 years + fine |
| Forgery of documents (fake university letters) | Penal Code, 1860 (act-11) | S.463–S.468 | Up to 3–7 years |
| Hundi / illegal foreign remittance | FERA, 1947 (act-218) | S.3, S.23 | Fine + imprisonment up to 5 years |
| Money laundering proceeds | MLPA, 2012 | S.4, S.5 | Up to 12 years + fine |
| Unregistered company / false RJSC claims | Companies Act, 1994 (act-791) | S.11, S.27 | Fine + dissolution |
| Operating visa agency without licence | Bangladesh Travel Agencies Ordinance, 1977 | All | Fine + revocation |
| Consumer rights violation | Consumer Rights Protection Act, 2009 | S.52, S.53 | Fine up to BDT 2 lac |
| Foreign student recruitment without approval | Private University Act, 2010 (act-1060) | S.44 | Administrative penalty |

---

## How to Search the Law Database

```bash
# Find all sections mentioning a keyword in the Penal Code
python3 -c "
import json
with open('/opt/bd-law-repos/Bangladesh-Legal-Acts-Dataset/Data/acts/act-print-11.json') as f:
    data = json.load(f)
for i, sec in enumerate(data['sections']):
    if 'cheat' in sec['section_content'].lower() or 'fraud' in sec['section_content'].lower():
        print(f'Section {i+1}:', sec['section_content'][:200])
"

# Search the full 1,556-act index for an act by keyword  
python3 -c "
import json
with open('/opt/bd-law-repos/bd-legal-rag/config/bdlaws-acts-index.json') as f:
    idx = json.load(f)
kw = 'consumer'
hits = [a for a in idx['acts'] if kw in a['name'].lower()]
for h in hits: print(h['id'], h['name'], h['url'])
"

# Read a specific act section
python3 -c "
import json
act_id = '1106'  # VAT Act
with open(f'/opt/bd-law-repos/Bangladesh-Legal-Acts-Dataset/Data/acts/act-print-{act_id}.json') as f:
    d = json.load(f)
print(f\"{d['act_title']} — {len(d['sections'])} sections\")
for s in d['sections'][:3]: print(s['section_content'][:300])
"
```

---

## bdlaws.minlaw.gov.bd Quick Reference

| Act | bdlaws URL (English) |
|-----|---------------------|
| Penal Code, 1860 | http://bdlaws.minlaw.gov.bd/act-11.html?lang=en |
| Evidence Act, 1872 | http://bdlaws.minlaw.gov.bd/act-24.html?lang=en |
| CrPC, 1898 | http://bdlaws.minlaw.gov.bd/act-75.html?lang=en |
| Foreign Exchange Regulation Act, 1947 | http://bdlaws.minlaw.gov.bd/act-218.html?lang=en |
| Companies Act, 1994 | http://bdlaws.minlaw.gov.bd/act-791.html?lang=en |
| Consumer Rights Protection Act, 2009 | http://bdlaws.minlaw.gov.bd/act-1038.html?lang=en |
| Anti-Terrorism Act, 2009 | http://bdlaws.minlaw.gov.bd/act-1045.html?lang=en |
| VAT and SD Act, 2012 | http://bdlaws.minlaw.gov.bd/act-1106.html?lang=en |
| Money Laundering Prevention Act, 2012 | http://bdlaws.minlaw.gov.bd/act-1115.html?lang=en |
| Digital Security Act, 2018 | http://bdlaws.minlaw.gov.bd/act-1261.html?lang=en |

---

*All repositories cloned to `/opt/bd-law-repos/` on 2026-06-17.*  
*Law texts sourced from official Bangladesh government portal: bdlaws.minlaw.gov.bd*  
*No copyrighted material redistributed — government publications are public domain in Bangladesh.*
