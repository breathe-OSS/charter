# BreatheOSS Community Charter & Constitution

[![Build](https://github.com/breathe-OSS/charter/actions/workflows/build-pdf.yml/badge.svg)](https://github.com/breathe-OSS/charter/actions/workflows/build-pdf.yml)
[![PDF](https://img.shields.io/badge/PDF-Download-1C84D4?style=flat&logo=adobeacrobatreader&logoColor=white)](https://github.com/breathe-OSS/charter/releases/latest/download/charter.pdf)
[![License: CC BY 4.0](https://img.shields.io/badge/License-CC_BY_4.0-blue.svg)](https://creativecommons.org/licenses/by/4.0/)

This repository contains the official, living **Community Charter & Constitution** of [BreatheOSS](https://breatheoss.app) — an open-source, community-driven environmental initiative established to make reliable, transparent, and verifiable air-quality information freely accessible across Jammu & Kashmir and Ladakh.

---

## Download Compiled Charter

The document is authored in [Typst](https://typst.app/) and compiled into a publication-grade PDF automatically via GitHub Actions upon every merge to `main`.

- **[Download Charter (PDF)](https://github.com/breathe-OSS/charter/releases/latest/download/charter.pdf)**
- Source: [`breatheoss-charter-v0.2.typ`](breatheoss-charter-v0.2.typ)

---

## Governance Model: Commits as Amendments

The `main` branch represents the current active, ratified constitution of BreatheOSS. To maintain full transparency, accountability, and a permanent constitutional ledger, **git commits serve as constitutional amendments**, with a strict separation between substantive policy amendments and technical fixes.

### Commit Types

| Commit Type | Scope | Description |
| :--- | :--- | :--- |
| `amend(<section>)` | **Constitutional Amendment** | Substantive changes to charter principles, governance rights, authority transfers, dispute processes, or community thresholds. |
| `fix(<scope>)` | Technical Fix | Typographical corrections, grammatical fixes, formatting errors, or broken cross-references. |
| `style(<scope>)` | Technical / Layout | Typst visual styling, margins, typography, spacing, or visual adjustments not altering meaning. |
| `ci(<scope>)` | Technical / Infrastructure | GitHub Actions workflows, compiler updates, release scripts, or build pipeline. |
| `docs(<scope>)` | Technical / Repository | Updates to `README.md`, contribution guidelines, or repository metadata. |

### Amendment Workflow

1. **Proposal**: Open an Issue or Pull Request detailing the proposed amendment, the section impacted, and the rationale.
2. **Review & Consensus**: Amendments undergo review according to the thresholds defined in **Section 17 & 18** of the Charter (e.g., standard governance review or enhanced community approval for fundamental principles).
3. **Ratification via Merge**: Merging to `main` creates an immutable amendment record in the git log. The GitHub Actions pipeline then automatically compiles and releases the updated PDF.

---

## Local Compilation

To compile the charter locally from source:

### Prerequisites

Install Typst (CLI):

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

---

## Core Constitutional Principles

- **3.1 Open Source Software:** Software developed specifically for BreatheOSS shall be released under an OSI-approved open-source licence by default, unless a specific component cannot legally or technically be distributed under such a licence. Any exception must be documented publicly.
- **3.2 Open Data:** Environmental telemetry and measurements collected by BreatheOSS are public goods and shall remain openly accessible.
- **3.3 Scientific Transparency:** Calibration procedures, methodological assumptions, and processing algorithms must be publicly documented.
- **3.4 Reproducibility:** Technical and scientific pipelines must be reproducible and inspectable by independent researchers.
- **3.5 Community Stewardship:** Participation or founding status does not grant personal ownership over public-interest assets.
- **3.6 Non-commercial Public Interest:** BreatheOSS operates exclusively for public environmental benefit rather than private financial extraction.

---

## Founding Co-Stewards

- **Aaditya Gupta** — Founding Co-Steward
- **Sidharth Sharma** — Founding Co-Steward

---

## Licence

- **Charter Document Text:** [Creative Commons Attribution 4.0 International (CC BY 4.0)](https://creativecommons.org/licenses/by/4.0/)
- **Typst Layout & Code:** [MIT License](https://opensource.org/licenses/MIT)
