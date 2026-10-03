# Breathe Charter

[![Build](https://github.com/breathe-OSS/charter/actions/workflows/build-pdf.yml/badge.svg)](https://github.com/breathe-OSS/charter/actions/workflows/build-pdf.yml)
[![PDF](https://img.shields.io/badge/PDF-Download-1C84D4?style=flat&logo=adobeacrobatreader&logoColor=white)](https://github.com/breathe-OSS/charter/releases/latest/download/charter.pdf)
[![License: CC BY-SA 4.0](https://img.shields.io/badge/License-CC_BY--SA_4.0-blue.svg)](https://creativecommons.org/licenses/by-sa/4.0/)

**Breathe Charter** is the foundational governance framework and constitution for BreatheOSS, an open-source, community-driven environmental initiative established to make reliable, transparent, and verifiable air quality information freely accessible across J&K & Ladakh.

## Download

The charter is written in **Typst** and automatically compiled into a PDF via GitHub Actions on every push to `main`.

- **[Download Charter (PDF)](https://github.com/breathe-OSS/charter/releases/latest/download/charter.pdf)**
- Source: [`breatheoss-charter-v0.2.typ`](breatheoss-charter-v0.2.typ)

---

## Founding Principles

- **3.1 Open Source Software:** Software developed specifically for BreatheOSS shall be released under an OSI-approved open-source licence by default, unless a specific component cannot legally or technically be distributed under such a licence. Any exception must be documented publicly.
- **3.2 Open Data:** Environmental measurements and sensor telemetry are public goods and remain freely accessible to everyone.
- **3.3 Scientific Transparency:** Assumptions, data processing pipelines, and calibration formulas are publicly documented.
- **3.4 Reproducibility:** Technical methodologies and software are reproducible so researchers can verify and improve upon them.
- **3.5 Community Stewardship:** The project is run for the public interest. Participation or founding status does not grant personal ownership over public-interest assets.
- **3.6 Non-commercial Public Interest:** BreatheOSS operates for environmental and public benefit rather than private profit.

## Governance and Amendments

The `main` branch represents the active, ratified constitution of BreatheOSS. Every commit in this repository functions as an entry in the constitutional ledger.

To keep a transparent record, all changes are categorized into constitutional amendments or technical fixes.

### Everyday Scenarios and Commit Types

| Scenario | Commit Format | Example | Review Requirement |
| :--- | :--- | :--- | :--- |
| **Routine Charter Amendment** | `charter: amend(<section>)` | `charter: amend(sec-11.5): clarify node host custody rules` | Standard Steward Consensus |
| **Fundamental Amendment** | `charter: amend(<section>)` | `charter: amend(sec-3.1): update core open source policy` | Enhanced Community Approval (Sec 17.2 & 18.1) |
| **Version Bump / Milestone** | `charter: release(<version>)` | `charter: release(v0.3): ratify Q4 governance revision` | Tagged Release & Consensus |
| **Typo or Reference Fix** | `charter: fix(<scope>)` | `charter: fix(sec-4): correct section cross-reference` | Direct PR / Fast Track |
| **Document Styling & Layout** | `charter: style(<scope>)` | `charter: style(layout): adjust margin and header font` | Visual Check / Local Build |
| **CI and Automation** | `charter: ci(<scope>)` | `charter: ci(workflow): update typst compiler version` | Passing CI Pipeline |
| **README & Repo Documentation** | `charter: docs(<scope>)` | `charter: docs(readme): update deployment instructions` | Standard PR Review |

### Everyday Scenarios Explained

#### 1. Proposing a Routine Amendment
Used when updating day-to-day operational details, clarifying language, or amending standard clauses:
- Open a GitHub Issue or Pull Request outlining the problem and proposed text.
- Tag the co-stewards and active contributors for review.
- Once agreed upon, merge using `charter: amend(<section>): <description>`.

#### 2. Fundamental Principles Amendment
Used for core constitutional principles (Section 1, 2, 3, or governance thresholds):
- Requires public notice and the Enhanced Community Approval process specified in Section 17.2 and 18.1.
- Detailed rationale must be provided in the commit body and PR discussion.

#### 3. Technical, Typographical, or Layout Fixes
If you find a typo, spelling mistake, bad cross-reference, or formatting glitch in the Typst file:
- Anyone can open a quick PR.
- Because these changes do not alter legal or governance meaning, they do not require constitutional debate.
- Use `charter: fix(...)` or `charter: style(...)`.

#### 4. Workflow, CI, or Metadata Updates
Changes to `.github/workflows/build-pdf.yml`, `.gitignore`, or repository settings:
- Use `charter: ci(...)` to clearly distinguish automation updates from charter prose.

#### 5. Document Version Bumps
When a substantive set of amendments is ratified or a major project milestone is reached:
- Update the document metadata block in `breatheoss-charter-v0.2.typ` (or bump filename if moving to v0.3).
- Commit with `charter: release(v0.X): <summary>`.
- Tag the commit (for example, `git tag v0.3 && git push origin v0.3`).
- The GitHub Actions pipeline will automatically compile the PDF, generate release notes, and attach the release assets.

## Structure

```
.
├── .github/
│   └── workflows/
│       └── build-pdf.yml       # Automated Typst PDF compilation and GitHub release
├── assets/
│   └── breathelogo3d.png       # 3D project emblem
├── breatheoss-charter-v0.2.typ # Complete constitutional charter source in Typst
├── .gitignore
└── README.md
```

## Build locally

### Prerequisites

Install Typst:

```bash
cargo install typst-cli

brew install typst

pacman -S typst
```

### Compiling to PDF

```bash
typst compile breatheoss-charter-v0.2.typ charter.pdf

typst watch breatheoss-charter-v0.2.typ
```

## Founding Co-Stewards

- [Aaditya Gupta](https://github.com/Flashwreck) (Founding Co-Steward)
- [Sidharth Sharma](https://github.com/sidharthify) (Founding Co-Steward)

## License

- **Charter Document Text:** [Creative Commons Attribution-ShareAlike 4.0 International (CC BY-SA 4.0)](https://creativecommons.org/licenses/by-sa/4.0/)
- **Typst Code & Styles:** [MIT License](https://opensource.org/licenses/MIT)
