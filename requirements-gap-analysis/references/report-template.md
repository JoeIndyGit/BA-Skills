# Gap analysis report template

Fill in this structure. Omit a section only if it would be empty, and say "None identified" instead of leaving a blank heading.

---

# Gap analysis — [project or scope]

**Date:** [date] · **Mode(s):** [completeness / coverage / current vs target / fit-gap / compliance]
**Baseline:** [what was used as "should be"] · **Compared set:** [what was checked]
**Assumptions:** [any assumptions made instead of asking]

## 1. Summary

| Status | Items | % |
|---|---|---|
| Covered | | |
| Partial | | |
| Gap | | |
| Unclear | | |
| Out of scope | | |
| Deferred | | |
| **Total** | | 100% |

Compute percentages over the total including out of scope and deferred, and also give "coverage of in-scope items" = Covered ÷ (Total − Out of scope − Deferred).

- **Top gaps:** one line each for the 3–5 most important, with IDs.
- **Most affected categories:** where gaps cluster.

## 2. Sources

| ID | Title | Side | Type | Date | Version / status |
|---|---|---|---|---|---|
| S1 | | Baseline | | | |
| S2 | | Compared | | | |

## 3. Coverage matrix

| Item ID | Baseline item | Status | Evidence | Gap ID |
|---|---|---|---|---|
| N-001 | [S1 §2.3] Refunds over €500 need approval | Covered | [S4 FR-031] | |
| N-002 | [S1 §2.4] Customer notified of refund status | Gap | Not found in S2–S4 | G-002 |

For fit-gap, add a "Fit type" column (out of the box, configuration, customization, workaround, not feasible).

## 4. Gap register

| ID | Category | Description | Status | Evidence / what is missing | Impact | Priority | Recommended action | Ask |
|---|---|---|---|---|---|---|---|---|
| G-001 | Data | Retention period for closed claims undefined | Gap | Not found in S2–S5 | Cannot design archiving; GDPR exposure | Critical | Elicit | Data Protection Officer |

## 5. Gap details (Critical and High)

Repeat for each Critical and High gap. Medium and Low gaps stay in the register only.

### G-001 — [short title]

- **Category / Priority / Status:** Data / Critical / Gap
- **Expected (baseline):** what should exist and why, with reference to the checklist item, source or clause.
- **Found:** [S2 §5.1] "verbatim quote" — or "Not found in S2–S5 (searched for: retention, archive, delete, purge)"
- **Why it matters:** impact on design, build, test, compliance or operations.
- **Question:** concrete and answerable → role
- **Recommended action:** elicit / write requirement / scope decision / change solution / accept risk
- **Proposed wording (needs confirmation):** optional

## 6. Elicitation questions by stakeholder

### [Role or name]
1. (G-001) Question…
2. (G-007) Question…

## 7. Not applicable categories

| Category | Reason |
|---|---|
| Localization | Internal tool, single country and language (S1 §1.2) |

## 8. Out of scope and deferred

| Item | Status | Evidence |
|---|---|---|

## 9. Other observations

- **Possible contradictions:** short list with citations; resolve with contradiction analysis.
- **Possible scope creep:** requirements with no supporting source.
- **Quality issues:** vague or untestable wording noticed along the way.

## 10. Limitations

- Sources not available, unreadable or partially read
- Categories analyzed with less depth
- Assumptions that affect the findings
