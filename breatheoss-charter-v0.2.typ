// BreatheOSS Charter (v0.2)

// Colors
#let color-bg = rgb("FFFFFF")
#let color-sidebar = rgb("F3F4F6")
#let color-panel = rgb("F9FAFB")
#let color-nav-selected = rgb("E5E7EB")
#let color-accent-dark = rgb("E6F2FC")
#let color-btn-primary = rgb("4B5563")
#let color-btn-highlight = rgb("1E3A8A")
#let color-text-primary = rgb("111827")
#let color-text-secondary = rgb("374151")
#let color-text-subtle = rgb("D1D5DB")
#let color-logo-blue = rgb("1C84D4")

// Layout & settings
#set page(
  paper: "a4",
  margin: (top: 1.1cm, bottom: 1.1cm, x: 1.35cm),
  fill: color-bg,
  header: context {
    if counter(page).get().first() > 1 {
      grid(
        columns: (1fr, 1fr),
        align(left, text(fill: color-logo-blue, size: 8.5pt, font: "Open Sans", weight: "bold")[
          BreatheOSS
        ]),
        align(right, text(fill: color-btn-primary, size: 8.5pt, font: "Open Sans")[
          Community Charter & Constitution
        ])
      )
      v(2pt)
      line(length: 100%, stroke: 0.5pt + color-accent-dark)
    }
  },
  footer: context {
    let page_number = counter(page).get().first()
    let total_pages = counter(page).final().first()
    line(length: 100%, stroke: 0.5pt + color-text-subtle)
    v(3.5pt)
    grid(
      columns: (1fr, 1fr),
      align(left, text(fill: color-text-secondary, size: 8pt, font: "Open Sans")[
        *BreatheOSS* • Foundational Governance Framework
      ]),
      align(right, text(fill: color-text-secondary, size: 8pt, font: "Open Sans")[
        Page #page_number of #total_pages
      ])
    )
  }
)

#set text(font: "Noto Serif", size: 8.85pt, fill: color-text-primary)
#set par(justify: true, leading: 0.50em, spacing: 0.58em)
#set list(marker: text(fill: color-logo-blue)[▪], spacing: 0.38em)
#show link: set text(fill: color-logo-blue)

// Headings
#show heading: set text(font: "Open Sans", fill: color-btn-highlight)
#show heading.where(level: 1): it => {
  v(7.5pt)
  text(size: 11.5pt, weight: "bold", fill: color-btn-highlight)[#it.body]
  v(2pt)
  line(length: 100%, stroke: 0.6pt + color-accent-dark)
  v(2.5pt)
}
#show heading.where(level: 2): it => {
  v(5pt)
  text(size: 9.8pt, weight: "bold", fill: color-logo-blue)[#it.body]
  v(1.5pt)
}
#show heading.where(level: 3): it => {
  v(3.5pt)
  text(size: 8.9pt, weight: "bold", fill: color-btn-highlight)[#it.body]
  v(1.5pt)
}

// Callout
#let callout(title: none, body, fill-color: color-panel, border-color: color-logo-blue) = {
  rect(
    width: 100%,
    fill: fill-color,
    inset: (x: 10.5pt, y: 7.5pt),
    radius: (left: 4pt, right: 0pt),
    stroke: (left: 3.5pt + border-color, rest: 0.4pt + color-accent-dark),
    [
      #if title != none [
        #text(font: "Open Sans", weight: "bold", fill: border-color, size: 9.2pt)[#title]
        #v(2pt)
      ]
      #text(size: 8.7pt, fill: color-text-primary)[#body]
    ]
  )
}

// Badge
#let badge(str, color: color-logo-blue, bg: color-accent-dark) = box(
  fill: bg,
  inset: (x: 5pt, y: 2pt),
  radius: 3pt
)[#text(size: 7.2pt, weight: "bold", fill: color, font: "Open Sans")[#str]]

// Header
#grid(
  columns: (auto, 1fr),
  gutter: 12pt,
  align(center + horizon, image("assets/breathelogo3d.png", height: 32pt)),
  align(left + horizon, [
    #text(size: 18pt, font: "Open Sans", weight: "bold", fill: color-logo-blue)[BreatheOSS]
    #h(8pt)
    #text(size: 11pt, font: "Open Sans", weight: "bold", fill: color-btn-highlight)[Community Charter & Constitution]
    #v(-3pt)
    #text(size: 8.5pt, font: "Open Sans", style: "italic", fill: color-btn-primary)[Foundational Governance Framework]
  ])
)

#v(-3pt)
#line(length: 100%, stroke: 1.5pt + color-logo-blue)
#v(4pt)

// Metadata
#rect(
  width: 100%,
  fill: color-sidebar,
  inset: 9pt,
  radius: 4pt,
  stroke: 1pt + color-accent-dark,
  [
    #grid(
      columns: (1.1fr, 1.2fr, 1fr, 1.2fr),
      row-gutter: 5pt,
      [#text(font: "Open Sans", weight: "bold", fill: color-logo-blue, size: 8pt)[DOCUMENT VERSION:]],
      [v0.2 (Pre-Development Revision)],
      [#text(font: "Open Sans", weight: "bold", fill: color-logo-blue, size: 8pt)[EFFECTIVE DATE:]],
      [27 September 2026],

      [#text(font: "Open Sans", weight: "bold", fill: color-logo-blue, size: 8pt)[GOVERNANCE STATUS:]],
      [Pre-incorporation Charter],
      [#text(font: "Open Sans", weight: "bold", fill: color-logo-blue, size: 8pt)[GEOGRAPHIC FOCUS:]],
      [Jammu & Kashmir and Ladakh],

      [#text(font: "Open Sans", weight: "bold", fill: color-logo-blue, size: 8pt)[FOUNDING CO-STEWARDS:]],
      [Aaditya Gupta & Sidharth Sharma],
      [#text(font: "Open Sans", weight: "bold", fill: color-logo-blue, size: 8pt)[LEGAL FORM:]],
      [Public-Interest Community Project]
    )
  ]
)

#v(4pt)

= 1. Preamble

BreatheOSS is an open-source, community-driven environmental initiative established to make reliable, transparent and verifiable air-quality information freely accessible to the public.

BreatheOSS exists to build and support an open network of environmental monitoring, openly accessible environmental data, reproducible scientific methodologies and free and open-source software.

The initiative is currently operated as a community project and may establish a formal legal entity in the future. This Charter establishes the foundational principles and governance framework that shall guide BreatheOSS before and after such incorporation.

The eventual legal structure of BreatheOSS shall be determined separately. Where BreatheOSS becomes a legal entity, its governing legal documents should, to the extent permitted by applicable law, preserve the principles established by this Charter.

BreatheOSS is intended to grow beyond its founders and remain useful to the public regardless of who participates in its operation.

= 2. Mission and Public Purpose

== 2.1 Mission

#callout(title: "The BreatheOSS Mission")[
  *To make reliable, transparent and verifiable air-quality information open and freely accessible to everyone in Jammu & Kashmir and Ladakh.*
]

== 2.2 Public Purpose

BreatheOSS exists for public and environmental benefit. Its activities may include, but are not limited to:

- Establishing and supporting community-hosted environmental monitoring;
- Collecting, maintaining and publishing environmental measurements;
- Developing free and open-source software;
- Developing and documenting reproducible scientific and technical methodologies;
- Supporting environmental research and education;
- Enabling researchers, developers, institutions and communities to use environmental information;
- Improving public understanding of air quality and environmental conditions;
- Collaborating with educational, scientific, governmental, civil-society and other organisations where such collaboration supports the mission; and
- Publishing research, reports, and public-interest updates based on air-quality observations and ground-truth measurements.

BreatheOSS may expand or modify its activities as circumstances change, provided that such activities remain consistent with this Charter and applicable law.

= 3. Founding Principles

BreatheOSS shall be guided by the following constitutional principles:

- *3.1 Open Source Software:* Software developed specifically for BreatheOSS shall be released under an OSI-approved open-source licence, unless a specific component cannot legally or technically be distributed under such a licence. Any exception shall be documented publicly.
- *3.2 Open Data:* Environmental data collected or generated by BreatheOSS shall be publicly accessible wherever reasonably possible, subject to privacy, safety, security and legal restrictions.
- *3.3 Scientific Transparency:* BreatheOSS shall seek to document its methodologies, assumptions, processing methods, calibration procedures and significant methodological changes.
- *3.4 Reproducibility:* BreatheOSS shall seek to make its scientific and technical processes sufficiently documented that others can understand, reproduce and improve upon them.
- *3.5 Community Stewardship:* BreatheOSS is maintained for its public-interest purpose. Participation in, contribution to, or founding of BreatheOSS does not by itself give any individual personal ownership over the project or its public-interest assets.
- *3.6 Non-commercial Public Interest:* BreatheOSS shall operate for public-interest purposes rather than for the private financial benefit of its founders or members. BreatheOSS may receive funding, enter into contracts, employ people, compensate contributors, purchase goods and services, and engage in other lawful economic activity necessary to fulfil its mission. Any surplus or income shall be directed towards the mission, legitimate operating expenses, compensation, development or preservation of BreatheOSS and its public-interest purposes, subject to applicable law.
- *3.7 Community Participation:* BreatheOSS shall remain open to meaningful participation by people who support its mission and contribute to its development.
- *3.8 Continuity Beyond Founders:* BreatheOSS shall be structured so that its mission, assets, knowledge and infrastructure can continue independently of the continued participation of its founders.
- *3.9 No Permanent Founder Control:* Founder status is a recognition of BreatheOSS's history and origin. It does not, by itself, constitute permanent operational control over BreatheOSS.

= 4. Status of the Founders

== 4.1 Founders

The founders of BreatheOSS are:
#v(2pt)
#align(center)[
  #block(
    fill: color-panel,
    stroke: 0.5pt + color-accent-dark,
    radius: 4pt,
    inset: (x: 20pt, y: 7pt),
    [
      #text(weight: "bold", size: 10pt, fill: color-btn-highlight)[Aaditya Gupta]
      #h(24pt) • #h(24pt)
      #text(weight: "bold", size: 10pt, fill: color-btn-highlight)[Sidharth Sharma]
    ]
  )
]
#v(2pt)

Founder status recognises their role in establishing BreatheOSS and shall remain permanently associated with them. Founder status cannot be transferred to another person.

== 4.2 Founder Status and Governance Authority

Founder status and Founding Authority are separate concepts. The founders initially each hold individual Founding Authority necessary to establish, develop, and guide BreatheOSS as equal co-stewards.

Each founder may subsequently transfer their own individual Founding Authority in accordance with this Charter. A transfer of Founding Authority does not transfer or remove the historical Founder status of the transferring founder.

== 4.3 Transfer of Individual Founding Authority

Either founder may independently transfer their own individual Founding Authority to:
- An individual; or
- A group, committee, or governing body

whom they determine to be suitably aligned with the mission, principles, and long-term interests of BreatheOSS.

#callout(title: "Key Safeguards Governing Transfer")[
  + *Independence of Co-Stewardship:* A founder's transfer of their own individual Founding Authority shall strictly apply to their own governance position and shall not alter, dilute, or diminish the other founder's ongoing Founding Authority.
  + *Status Limitation:* The recipient of transferred Founding Authority succeeds only to that governance authority and shall not thereby become a founder.
  + *Post-Transfer Standing:* Following a valid transfer, the transferring founder shall participate in BreatheOSS with the rights and responsibilities applicable to ordinary members, while retaining permanent historical Founder status and the specific founder safeguards established by this Charter.
]

= 5. Community and Membership

== 5.1 Participation

Participation in BreatheOSS shall be open to individuals who support its mission and make a meaningful contribution to the project. A contribution need not be large, and may span software development, documentation, research, scientific review, sensor hosting, hardware work, design, outreach, education, data analysis, infrastructure, community organisation, or financial and material support. Participation shall not require a contribution of a particular monetary value.

== 5.2 Meaningful Participation

BreatheOSS may establish reasonable procedures to distinguish genuine participation from nominal membership created solely for organisational influence. Such procedures shall be defined through community policies rather than this Charter.

== 5.3 Voting Members and Public Registry

To ensure transparency, prevent fraudulent or duplicate participation, and keep governance auditable:

+ *Roster of Voting Members:* A person shall be recognised as an eligible voting member if and only if they are listed on the official public Voting Members registry maintained by BreatheOSS and published through its primary website.
+ *Public Auditability:* The published registry shall serve as the authoritative public record of the individuals entitled to vote on designated community governance matters and constitutional votes.
+ *Separation from General Participation:* Anyone may contribute to and participate in BreatheOSS under Section 5.1. Voting rights for formal governance decisions are reserved to individuals listed on the official Voting Members registry.
+ *Registry Governance:* Procedures for adding, removing, or updating entries in the Voting Members registry shall be established through a publicly documented governance policy. No individual shall unilaterally alter the registry for the purpose of influencing a specific vote.

== 5.4 Equal Standing of Members

Membership shall not be subordinate to founder status for ordinary community participation. Founders who have transferred their Founding Authority shall participate as members on substantially the same basis as other members, subject only to the specific safeguards expressly established by this Charter.

= 6. Governance

== 6.1 General Principle

BreatheOSS shall be governed through documented, transparent and accountable decision-making. No individual shall possess unlimited authority over all aspects of BreatheOSS solely because of their position or historical status.

== 6.2 Distributed Responsibilities

Different areas of BreatheOSS may be entrusted to different people, teams, committees or governing bodies, including software and infrastructure, scientific and technical work, data, community operations, finances, outreach, and legal/administrative matters. The exact structure may evolve as BreatheOSS grows.

== 6.3 Decision-Making

Decision-making authority shall depend on the nature and significance of the decision:
- Routine operational decisions should remain with the people responsible for the relevant area.
- Significant decisions shall involve the appropriate governance body or community process.
- Fundamental decisions shall be subject to the additional protections established by this Charter (Section 17).

== 6.4 Community Voting

Where a decision is designated as a community decision, all eligible voting members listed on the official Voting Members registry shall have an opportunity to vote. Specific voting procedures, quorum and voting thresholds may be established through governance policies, subject to the requirements for Enhanced Community Approval where applicable.

== 6.5 Charter Consistency

Every significant decision of BreatheOSS shall be interpreted and made consistently with: (1) this Charter, (2) the mission of BreatheOSS, (3) its founding principles, and (4) applicable law. Where a decision is disputed on the basis of Charter consistency, the relevant decision-makers shall document the reasoning supporting their interpretation.

= 7. Charter Review and Disagreement

== 7.1 Normal Disagreement

Disagreement between members, founders, maintainers or governing bodies is a normal part of community governance. Disagreement alone shall not constitute grounds for removing a person from BreatheOSS or reclaiming Founding Authority.

== 7.2 Documented Reasoning

For significant decisions, BreatheOSS should record: the decision, the relevant reasoning, the relevant Charter principles, and significant opposing views where appropriate.

== 7.3 Charter Review Panel and Adjudication

Where voting members reasonably believe that a significant project decision or policy conflicts with this Charter, a formal Charter Review may be initiated.

+ *Joint Review Panel:* Charter Reviews shall be considered by a joint panel comprising:
  - (a) All active individuals holding Founding Authority; and
  - (b) The active recognised core maintainers of BreatheOSS.
+ *Evidentiary Basis:* The panel shall examine the alleged conflict against the explicit language, founding principles, and public-interest purpose of this Charter rather than personal preference or the relative authority of the parties involved.
+ *Written Determination:* The joint review panel shall issue and publish a documented written determination recording the determination reached, the reasoning supporting it, and any significant dissenting views.
+ *Evenly Divided Panel:* If the panel is evenly divided and no determination can be reached, the challenged decision or policy shall remain in effect and shall not be invalidated solely by the Charter Review. The written determination shall publish the reasoning of both sides, including any significant concurring and dissenting views.

== 7.4 Interpretation

Where the Charter does not provide a specific answer, the interpretation adopted should preserve its overall purpose and principles while allowing BreatheOSS to adapt to circumstances not anticipated by this document.

= 8. Founder Reclaim of Founding Authority

== 8.1 Purpose

The reclaim mechanism exists strictly as a safeguard against a successor holder of Founding Authority becoming starkly and fundamentally incompatible with the mission or principles of BreatheOSS. It is not intended to function as a general founder veto.

== 8.2 Conditions and Scope of Reclaim

+ *Removal of Non-Founder Successors:* Founding Authority held by a non-founder successor may be reclaimed where that successor acts starkly and demonstrably in material conflict with the fundamental principles or public-interest mission of this Charter.
+ *Charter-Based Grounds:* A reclaim shall be based on identifiable provisions of this Charter and shall not be exercised merely because of ordinary disagreement, personal preference, political disagreement, or a difference in technical or operational judgement.
+ *Inviolability of Co-Founders:* No founder may remove, expel, disenfranchise, or strip the Founder status or Founding Authority of another founder. A founder's permanent status and constitutional standing shall not be revoked or overridden by another founder.

== 8.3 Founder Consent for Reclaim

+ Where both founders are living and willing to participate, both founders must agree in writing that the conditions for reclaim have been satisfied before Founding Authority may be reclaimed from a non-founder successor.
+ A founder who previously transferred their own Founding Authority may participate in and consent to a reclaim against a non-founder successor holding that authority. Such participation does not automatically restore the founder's previously transferred Founding Authority.
+ If one founder has died or is permanently unable or unwilling to participate, the surviving or participating founder may exercise the reclaim mechanism alone.
+ The reclaim mechanism applies only to Founding Authority held by non-founder successors. It shall not provide a mechanism for one founder to remove or override another founder.

== 8.4 Temporary Restoration of Authority

Upon a valid reclaim, the founders may temporarily exercise the governance authority necessary to protect and maintain BreatheOSS. This temporary restoration shall not convert Founder status into permanent operational control.

== 8.5 Succession After Reclaim

Following a reclaim, the founders shall actively make reasonable and sustained efforts to identify, vet, and appoint a compatible successor holder of Founding Authority within a practical period of time.

The founders may continue performing the necessary governance functions during this transition period to ensure project stability, operational continuity, and protection of BreatheOSS's public-interest assets. The purpose of the reclaim mechanism is to restore compatible, mission-aligned governance rather than permanently return BreatheOSS to indefinite founder control.

== 8.6 Limits

The reclaim mechanism shall not be used solely because:
- A founder disagrees with an ordinary decision;
- A founder prefers a different technical implementation;
- A founder loses a community vote;
- A policy changes within the boundaries of this Charter; or
- A successor exercises legitimate governance authority differently from how a founder personally would have exercised it.

= 9. Technical and Scientific Governance

== 9.1 Methodology

BreatheOSS shall maintain documented and reproducible methodologies for processing and interpreting environmental data.

== 9.2 Methodological Changes

Significant changes to AQI calculations, data-processing methodology or other scientific methodology shall: (1) be documented; (2) identify the reason for the change; (3) undergo appropriate technical or scientific review; (4) be versioned where practical; and (5) be publicly documented where appropriate.

== 9.3 Monitoring Equipment

BreatheOSS may use monitoring equipment from different manufacturers. Selection and adoption of monitoring equipment should be based on transparent technical criteria, including measurement quality, reproducibility, reliability, documentation, openness, maintainability, and suitability for the intended deployment. BreatheOSS's constitutional documents shall not permanently prescribe a particular manufacturer or hardware model.

== 9.4 Scientific Independence

Technical and scientific decisions shall not be deliberately altered for the purpose of producing a preferred political, commercial or personal outcome.

= 10. Data Governance

== 10.1 Public Environmental Data

BreatheOSS shall seek to make environmental measurements freely accessible to the public.

== 10.2 Data Provenance

Where reasonably possible, published data should allow users to understand the complete pipeline:
#v(1pt)
#align(center)[
  #block(
    fill: color-accent-dark,
    stroke: 0.5pt + color-logo-blue,
    radius: 3pt,
    inset: (x: 12pt, y: 6pt),
    [
      #text(size: 8.3pt, font: "Open Sans", weight: "bold", fill: color-btn-highlight)[
        Source $arrow$ Measurement $arrow$ Processing $arrow$ Calibration / Correction $arrow$ Methodology $arrow$ Published Result
      ]
    ]
  )
]
#v(1pt)

== 10.3 Privacy and Responsible Data Use

BreatheOSS shall respect the privacy of individuals and shall minimise the collection and processing of personal data to what is necessary for legitimate project purposes. BreatheOSS shall not use environmental monitoring or public-data infrastructure as a means of tracking individuals. Where personal data is not necessary for the operation of a service, BreatheOSS should avoid collecting it.

Data practices shall be documented transparently and, where reasonably possible, implemented in a manner that can be independently reviewed through the project's open-source code and documentation. Environmental and sensor data intended for public use should remain openly accessible where doing so does not compromise individual privacy, security, or other legitimate protections. Detailed rules concerning collection, processing, retention, security, and user rights shall be established through BreatheOSS's Privacy Policy.

= 11. Assets and Infrastructure

== 11.1 Public-Interest Stewardship

BreatheOSS assets shall be held and managed for the purposes of BreatheOSS. Assets include monitoring equipment, computers and hardware, domains, GitHub organisations and repositories, servers and cloud infrastructure, databases, datasets, documentation, software, branding, intellectual property, social-media accounts, and other resources acquired specifically for BreatheOSS.

== 11.2 Individual Custody

An individual may physically possess or administer a BreatheOSS asset without becoming its personal owner. Custody and ownership shall be treated as separate concepts.

== 11.3 Legal Entity Transition

Once BreatheOSS establishes a legal entity, BreatheOSS assets should, where legally and practically appropriate, be transferred or otherwise formally assigned to that legal entity. No individual shall claim personal ownership of BreatheOSS assets solely because they originally purchased, created, administered or physically possessed them on behalf of the project.

== 11.4 Critical Infrastructure

Critical infrastructure should not depend upon the unilateral control of one person. BreatheOSS should maintain appropriate procedures for administrative succession, credential recovery and transfer of control.

== 11.5 Hardware Ownership and Open Sensor Telemetry

BreatheOSS establishes clear boundaries regarding physical equipment ownership:

+ *BreatheOSS Project Equipment:* Monitoring hardware purchased directly using BreatheOSS funds, or procured by founders, members, or donors specifically for distribution through BreatheOSS, remains a BreatheOSS project asset. An individual or community host possessing such equipment acts as a custodian and does not thereby become its owner.
+ *Independently Owned Nodes:* Any sensor or other hardware purchased by an individual, household, or partner institution using their own personal or institutional funds remains the property of that individual, household, or institution. BreatheOSS claims no ownership or property rights over independently purchased hardware.
+ *Open Sensor Telemetry:* BreatheOSS may ingest, process, analyse, calibrate, and publish environmental telemetry contributed by independently operated open-source sensors or other publicly accessible environmental data sources, subject to applicable data licences, terms of contribution, privacy, security, and legal restrictions.

= 12. Open Source and Attribution

Software, documentation and other works produced specifically for BreatheOSS should be released under appropriate open licences wherever possible. Contributors shall receive appropriate attribution for their contributions. Open licensing shall not be interpreted as removing attribution rights or permitting deliberate misrepresentation of authorship. Specific licensing and contributor procedures shall be defined separately.

= 13. Financial Governance

== 13.1 Purpose of Funds

BreatheOSS funds shall be used exclusively for: furthering its mission; maintaining and improving the project; legitimate operating expenses; appropriate salaries or compensation; reimbursement of legitimate expenses; equipment and infrastructure; research, education and outreach; and other activities consistent with the Charter.

== 13.2 No Private Distribution of Surplus

BreatheOSS shall not distribute project surplus or assets to founders or members merely because of their status as founders or members.

== 13.3 Pre-incorporation Financial Authority

Before a legal entity and formal community financial structure are established, the founders may exercise financial control over BreatheOSS funds. Such funds shall nevertheless be treated as being held and used for BreatheOSS rather than as personal funds.

== 13.4 Community Financial Governance & Transparency

As BreatheOSS develops a formal community governance structure, financial decisions should become subject to documented approval and accountability procedures. BreatheOSS should maintain appropriate records of significant income and expenditure and provide financial information to the relevant members or governing bodies.

= 14. Conflicts of Interest

Anyone exercising significant authority over BreatheOSS should disclose conflicts of interest that could materially affect a decision. A person with a material conflict should not exercise sole decision-making authority over the affected matter. Detailed conflict-of-interest procedures may be established through policy.

= 15. Departure and Succession

== 15.1 Voluntary Departure

Any member may leave BreatheOSS. Departure shall not transfer ownership of BreatheOSS assets to the departing individual.

== 15.2 Founders

A founder who leaves BreatheOSS shall retain permanent Founder status. Before ceasing active participation, a founder who holds Founding Authority shall transfer that authority to an appropriate successor individual or governing body in accordance with this Charter.

A departing founder shall also transfer to BreatheOSS, or to its designated successor or governing body, any BreatheOSS assets, accounts, credentials, intellectual property, domains, infrastructure, funds, equipment, records, or other resources under their control that are held on behalf of BreatheOSS.

Their contribution and founder status shall remain recognised in the historical record and project credits and shall not be removed merely because they cease participating. Nothing in this section gives a departing founder a personal ownership claim over assets or resources held on behalf of BreatheOSS.

== 15.3 Return and Continuity

A founder who later returns to active participation shall participate with the rights applicable to members unless they are then the valid holder of Founding Authority. The departure of one or more founders shall not, by itself, terminate BreatheOSS; BreatheOSS shall continue through its existing governance and succession mechanisms.

= 16. Critical Administrative Continuity

BreatheOSS should maintain sufficient distributed access to critical project resources (domains, repositories, infrastructure, financial records, documentation, sensor records, credentials) to prevent the disappearance or departure of one individual from permanently disabling the organisation. A founder or administrator shall not intentionally retain exclusive control over critical BreatheOSS resources in a manner that prevents legitimate succession.

= 17. Fundamental Principles and Reserved Matters

== 17.1 Protected Matters

The following constitutional matters shall receive enhanced protection:
- The public-interest purpose of BreatheOSS;
- Its environmental mission;
- Its non-profit character;
- The principle that BreatheOSS assets are held for its public-interest purposes;
- The principle of open-source software;
- The principle of public environmental data;
- Scientific transparency and reproducibility;
- The absence of permanent personal ownership by founders;
- Continuity beyond the founders; and
- The principles governing dissolution and disposition of assets.

A proposal that would fundamentally alter these principles shall require *Enhanced Community Approval* and must comply with applicable law.

== 17.2 Definition and Scope of Enhanced Community Approval

#callout(title: "Enhanced Community Approval Threshold")[
  Where this Charter specifies *"Enhanced Community Approval"* or the *"highest level of approval"*, the proposal shall strictly require both:

  + *Founding Authority Consent:* The written agreement of every living individual currently holding Founding Authority who is willing and able to participate. If an individual holding Founding Authority has died or is permanently unable or unwilling to participate, the requirement shall apply to the remaining participating holders of Founding Authority; *and*
  + *Supermajority Member Approval:* An affirmative vote of at least *eighty percent (80%)* of votes cast by eligible voting members, provided that at least *sixty percent (60%)* of all eligible voting members listed on the official Voting Members registry participate in the vote. Abstentions shall not be counted as votes cast.
]

=== Applicable Scope
This enhanced standard applies strictly to decisions that would fundamentally alter the constitutional identity or public-interest character of BreatheOSS, including:
- Converting BreatheOSS into a for-profit organisation or distributing project revenue or surplus for private gain;
- Abandoning the commitment to free and open-source software;
- Abandoning the commitment to open environmental data;
- Deliberately compromising scientific transparency, reproducibility, or methodological independence;
- Creating permanent personal ownership or proprietary claims over public BreatheOSS assets;
- Fundamentally altering any Fundamental Principle or Reserved Matter under Section 17; and
- Dissolving BreatheOSS or disposing of its remaining assets other than through a legally compliant transfer to a substantially mission-aligned public-interest successor.

The enhanced approval requirement shall not apply to ordinary operational, technical, scientific, financial, or policy decisions that remain within the principles of this Charter.

= 18. Commercial Activity and For-Profit Conversion

BreatheOSS may engage with commercial organisations and may lawfully receive grants, donations, sponsorship, services, equipment, contracts, partnerships, and other forms of support. Such relationships shall not by themselves change the public-interest character of BreatheOSS.

== 18.1 Conversion of Purpose

BreatheOSS shall not be converted into a for-profit organisation merely through an ordinary operational decision. A proposal to fundamentally abandon its non-profit/public-interest character shall constitute a fundamental Charter matter and require *Enhanced Community Approval* under Section 17.2 and applicable law. Where Founding Authority has been transferred, any such change shall remain subject to the fundamental protections of this Charter and applicable law.

= 19. Policies and Operational Rules

This Charter establishes BreatheOSS's constitutional principles; it shall not attempt to prescribe every operational procedure. BreatheOSS may maintain separate policies covering membership, elections, community voting, finance, conflicts of interest, software development, sensor validation, AQI methodology, data governance, privacy, infrastructure, contributor conduct, asset management, and scientific review. Such policies may be amended as BreatheOSS develops, provided that they remain consistent with this Charter.

= 20. Amendment of the Charter

== 20.1 General Amendments

This Charter should remain capable of evolving as BreatheOSS develops. Amendments that clarify, improve or expand the Charter while remaining consistent with its existing principles may be approved through the ordinary constitutional amendment process.

== 20.2 Fundamental Amendments

An amendment that substantially alters the fundamental principles of BreatheOSS shall require *Enhanced Community Approval* under Section 17.2.

== 20.3 Consistency

No amendment may deliberately contradict the fundamental principles of BreatheOSS while claiming to preserve them through wording alone. The amendment process shall be interpreted according to the purpose and substance of the Charter rather than merely its literal wording.

= 21. Transition to a Legal Entity

When BreatheOSS establishes a legal entity, the founders and relevant governance bodies shall seek to ensure that:

+ The legal entity's objects reflect the public-interest purpose of BreatheOSS;
+ BreatheOSS assets are appropriately transferred, assigned, licensed or otherwise regularised;
+ Relevant intellectual property and infrastructure are placed under appropriate organisational stewardship;
+ The legal entity's governing documents preserve the fundamental principles of this Charter to the extent legally permissible; and
+ Governance authority is transferred into the legal structure through documented procedures.

Where this Charter conflicts with applicable law or a legally binding document of the incorporated entity, applicable law shall prevail. The Charter should subsequently be reviewed to maintain consistency with the legal structure.

= 22. Dissolution and Continuation

BreatheOSS should, where possible, seek to continue its mission through another appropriate community or legal structure rather than simply terminate its public-interest activities.

If BreatheOSS is dissolved, its remaining assets shall, after satisfaction of lawful liabilities and subject to applicable law, be transferred or dedicated to an organisation or successor structure with substantially similar public-interest purposes. Where legally permissible, a successor may include a BreatheOSS community structure or organisation established to continue its mission. No individual shall receive BreatheOSS's public-interest assets merely because they were a founder, member, contributor or administrator.

= 23. Interpretation

This Charter shall be interpreted as a whole. Where an individual provision is ambiguous, interpretation should favour: (1) the public-interest purpose of BreatheOSS; (2) the mission stated in this Charter; (3) openness and transparency; (4) scientific integrity; (5) community participation; (6) continuity beyond individual participants; and (7) compliance with applicable law. The Charter should be interpreted to enable BreatheOSS to adapt to new circumstances while preserving its fundamental purpose and principles.

= 24. Adoption

This Charter is formally adopted as the foundational governance framework of BreatheOSS by its founding members:

#v(4pt)
#grid(
  columns: (1fr, 1fr),
  gutter: 14pt,
  rect(
    width: 100%,
    fill: color-sidebar,
    stroke: 1pt + color-logo-blue,
    radius: 4pt,
    inset: 10pt,
    [
      #text(font: "Open Sans", weight: "bold", size: 9.8pt, fill: color-btn-highlight)[Aaditya Gupta] \
      #text(font: "Open Sans", size: 8.2pt, fill: color-btn-primary)[Founder & Co-Steward, BreatheOSS]
      #v(6pt)
      #line(length: 100%, stroke: 0.5pt + color-text-subtle)
      #v(4pt)
      #grid(
        columns: (auto, 1fr),
        gutter: 6pt,
        [#badge("ADOPTED", color: rgb("065F46"), bg: rgb("D1FAE5"))],
        align(right, text(size: 8pt, style: "italic", fill: color-text-secondary)[27th September, 2026])
      )
    ]
  ),
  rect(
    width: 100%,
    fill: color-sidebar,
    stroke: 1pt + color-logo-blue,
    radius: 4pt,
    inset: 10pt,
    [
      #text(font: "Open Sans", weight: "bold", size: 9.8pt, fill: color-btn-highlight)[Sidharth Sharma] \
      #text(font: "Open Sans", size: 8.2pt, fill: color-btn-primary)[Founder & Co-Steward, BreatheOSS]
      #v(6pt)
      #line(length: 100%, stroke: 0.5pt + color-text-subtle)
      #v(4pt)
      #grid(
        columns: (auto, 1fr),
        gutter: 6pt,
        [#badge("ADOPTED", color: rgb("065F46"), bg: rgb("D1FAE5"))],
        align(right, text(size: 8pt, style: "italic", fill: color-text-secondary)[26th September, 2026])
      )
    ]
  )
)

#pagebreak()

= Schedule A — Initial Project Assets

A continuously maintained register shall identify significant BreatheOSS assets, their primary custodians, and their intended organisational status.

#v(3pt)
#table(
  columns: (1.2fr, 1.1fr, 1.7fr),
  fill: (col, row) => if row == 0 { color-accent-dark } else if calc.even(row) { color-panel } else { color-sidebar },
  stroke: (col, row) => if row == 0 { none } else { 0.4pt + color-text-subtle },
  inset: 5.5pt,
  align: (col, row) => if row == 0 { center + horizon } else { left + horizon },

  table.header(
    text(fill: color-logo-blue, weight: "bold", font: "Open Sans", size: 8pt)[Project Asset],
    text(fill: color-logo-blue, weight: "bold", font: "Open Sans", size: 8pt)[Current Custodian(s)],
    text(fill: color-logo-blue, weight: "bold", font: "Open Sans", size: 8pt)[Intended Organisational Status]
  ),

  [BreatheOSS Domains (`breatheoss.app`, etc.)], [Aaditya Gupta], [BreatheOSS project asset],
  [GitHub Organisation (`breathe-OSS`)], [Sidharth Sharma], [BreatheOSS project asset],
  [Source Repositories & Codebases], [Sidharth Sharma & Aaditya Gupta], [BreatheOSS project asset],
  [Environmental Datasets & Telemetry Databases], [Aaditya Gupta & Sidharth Sharma], [Public-interest environmental data freely accessible under Open Data principles],
  [Project-Funded Monitoring Equipment], [Individual community hosts & partner institutions (per Sensor Registry)], [BreatheOSS project property held for public monitoring; custody does not constitute ownership],
  [Google Play Console Distribution Account], [Sidharth Sharma & Aaditya Gupta], [BreatheOSS project distribution asset],
  [Apple Developer Distribution Account], [Sidharth Sharma], [BreatheOSS project distribution asset],
  [Cloud Servers, Hosting & API Infrastructure], [Aaditya Gupta & Sidharth Sharma], [BreatheOSS project asset],
  [Official Communication Channels (Discord, Socials)], [Sidharth Sharma & Aaditya Gupta], [BreatheOSS community asset]
)

= Schedule B — Governance Framework

The initial governance structure may consist of the following tiers and responsibilities:

#v(3pt)
#grid(
  columns: (1fr, 1fr),
  gutter: 9pt,
  rect(
    width: 100%,
    fill: color-panel,
    stroke: 0.5pt + color-accent-dark,
    radius: 4pt,
    inset: 8pt,
    [
      #text(font: "Open Sans", weight: "bold", fill: color-logo-blue, size: 8.8pt)[Founders & Co-Stewards]
      #v(2pt)
      #text(size: 8.2pt)[*Aaditya Gupta* and *Sidharth Sharma*. Hold initial Founding Authority necessary to guide, safeguard, and develop BreatheOSS.]
    ]
  ),
  rect(
    width: 100%,
    fill: color-panel,
    stroke: 0.5pt + color-accent-dark,
    radius: 4pt,
    inset: 8pt,
    [
      #text(font: "Open Sans", weight: "bold", fill: color-logo-blue, size: 8.8pt)[Voting Members]
      #v(2pt)
      #text(size: 8.2pt)[Individuals who meaningfully contribute to BreatheOSS and are inscribed on the official public Voting Members registry.]
    ]
  ),
  rect(
    width: 100%,
    fill: color-panel,
    stroke: 0.5pt + color-accent-dark,
    radius: 4pt,
    inset: 8pt,
    [
      #text(font: "Open Sans", weight: "bold", fill: color-logo-blue, size: 8.8pt)[Successor Governance]
      #v(2pt)
      #text(size: 8.2pt)[A person, committee, or body entrusted with an individual founder's Founding Authority following a valid constitutional transfer.]
    ]
  ),
  rect(
    width: 100%,
    fill: color-panel,
    stroke: 0.5pt + color-accent-dark,
    radius: 4pt,
    inset: 8pt,
    [
      #text(font: "Open Sans", weight: "bold", fill: color-logo-blue, size: 8.8pt)[Working Groups & Maintainers]
      #v(2pt)
      #text(size: 8.2pt)[Teams entrusted with specific technical, scientific, operational, sensor deployment, educational, or community responsibilities.]
    ]
  )
)

= Schedule C — Constitutional Decision Categories

#v(3pt)
#table(
  columns: (1fr, 1.5fr, 1.5fr),
  fill: (col, row) => if row == 0 { color-accent-dark } else if calc.even(row) { color-panel } else { color-sidebar },
  stroke: (col, row) => if row == 0 { none } else { 0.4pt + color-text-subtle },
  inset: 6pt,
  align: (col, row) => if row == 0 { center + horizon } else { left + horizon },

  table.header(
    text(fill: color-logo-blue, weight: "bold", font: "Open Sans", size: 8pt)[Decision Category],
    text(fill: color-logo-blue, weight: "bold", font: "Open Sans", size: 8pt)[Representative Example],
    text(fill: color-logo-blue, weight: "bold", font: "Open Sans", size: 8pt)[Constitutional Governance Treatment]
  ),

  [*Operational*], [Deploying a sensor node or configuring network], [Delegated to the relevant operational team or maintainer],
  [*Technical*], [Changing software architecture or framework implementation], [Maintainers / documented technical review process],
  [*Scientific*], [Modifying AQI calculation formulas or calibration baselines], [Documented scientific review and versioned publication],
  [*Community*], [Updating membership policies or contributor guidelines], [Community process and standard voting procedures],
  [*Financial*], [Approving significant project expenditures or grants], [Documented financial controls and approval procedures],
  [*Constitutional*], [Amending operational provisions or clarifying Charter clauses], [Constitutional process (Section 20.1)],
  [*Fundamental*], [Altering core mission, open licensing, or for-profit conversion], [*Enhanced Community Approval* (Section 17.2 & 18.1)]
)
