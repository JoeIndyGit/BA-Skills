# Requirements draft template

Fill in this structure. Omit a section only if it would be empty, and say "None identified" instead of leaving a blank heading. If the user or workspace provides a house template, use that instead and map these sections into it.

---

# [Project] — Requirements draft

**Version:** 0.1 (Draft) · **Date:** [date] · **Status:** For review
**Prepared from:** sources S1–S[n] · **Style:** [shall statements / user stories / mixed]
**Assumptions made while drafting:** [list, or "None"]

## 1. Introduction

- **Purpose:** what this draft is for and who should review it.
- **Scope:** in scope, out of scope, releases or phases.
- **Conventions:** ID scheme, meaning of "shall", origin (Stated / Derived), priority scheme (MoSCoW or house scheme; TBC when not stated in sources).

## 2. Sources

| ID | Title | Type | Author / participants | Date | Status |
|---|---|---|---|---|---|

## 3. Glossary

| Term | Definition | Synonyms to avoid | Source |
|---|---|---|---|

## 4. Stakeholders and user roles

| Role | Description | Interests / goals | Source |
|---|---|---|---|

## 5. Business requirements

| ID | Requirement | Success measure | Priority | Origin | Sources |
|---|---|---|---|---|---|

## 6. Stakeholder and user requirements

| ID | Role | Requirement | Priority | Origin | Sources |
|---|---|---|---|---|---|

## 7. Functional requirements

Group by capability or process. Use the full block for each requirement when there are fewer than about 40 requirements; use the compact table for larger sets and keep full blocks only for complex ones.

### 7.1 [Capability or process name]

#### FR-001 — [short title]

| Field | Value |
|---|---|
| Statement | The [system] shall … |
| Rationale | Why, with reference to the source |
| Acceptance criteria | 1. Given … When … Then … <br> 2. … |
| Priority | Must / Should / Could / Won't / TBC |
| Origin | Stated / Derived |
| Sources | [S2 §3.1], [S4 00:21:15] |
| Related | BR-002, RUL-004 |
| Open questions | Q-006 |
| Status | Draft |

User story variant:

#### US-001 — [short title]

**As a** [role], **I want** [capability], **so that** [benefit].

Acceptance criteria:
1. Given … When … Then …
2. Given … When … Then …

Priority · Origin · Sources · Related · Open questions · Status

Compact table for larger sets:

| ID | Title | Statement | Acceptance criteria | Priority | Origin | Sources | Questions |
|---|---|---|---|---|---|---|---|

## 8. Business rules

| ID | Rule | Applies to | Origin | Sources |
|---|---|---|---|---|

## 9. Data requirements

| ID | Entity / attribute | Requirement (definition, format, mandatory, validation, retention, system of record) | Origin | Sources |
|---|---|---|---|---|

## 10. Interface requirements

| ID | Systems | Direction | Trigger / frequency | Data | Error handling | Origin | Sources |
|---|---|---|---|---|---|---|---|

## 11. Non-functional requirements

| ID | Category | Requirement | Metric and target | Conditions | Origin | Sources |
|---|---|---|---|---|---|---|

## 12. Transition requirements

| ID | Requirement | Origin | Sources |
|---|---|---|---|

## 13. Constraints, assumptions and dependencies

| ID | Type | Description | Impact if wrong or missing | Sources |
|---|---|---|---|---|

## 14. Open questions

| ID | Question | Why it matters | Related requirements | Suggested owner |
|---|---|---|---|---|

## 15. Out of scope

| Item | Source |
|---|---|

## 16. Traceability

### Source to requirements

| Source statement | Quote | Requirement IDs |
|---|---|---|
| S2-007 | "…" | FR-003, RUL-001 |

### Source statements not used

| Source statement | Quote | Reason (duplicate / out of scope / opinion not adopted / needs decision) |
|---|---|---|

## 17. Draft summary

| Type | Stated | Derived | Total |
|---|---|---|---|
| Business | | | |
| Stakeholder | | | |
| Functional | | | |
| Non-functional | | | |
| Business rules | | | |
| Data | | | |
| Interface | | | |
| Transition | | | |

- **Open questions:** [n], most in [areas]
- **Recommended next steps:** review derived requirements and open questions with owners; run contradiction and gap analysis on this draft.
