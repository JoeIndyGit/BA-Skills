# Contradiction analysis report template

Fill in this structure. Omit a section only if it would be empty, and say "None identified" instead of leaving a blank heading.

---

# Contradiction analysis — [project or scope]

**Date:** [date] · **Sources analyzed:** [n] · **Focus:** [whole set or area]
**Precedence used:** [user-provided rules, or "default order: contracts and regulations > approved documents > drafts and backlog > meeting decisions > informal communication"]
**Assumptions:** [any assumptions made instead of asking]

## 1. Summary

| Severity | Confirmed | Probable | Possible | Total |
|---|---|---|---|---|
| Critical | | | | |
| High | | | | |
| Medium | | | | |
| Low | | | | |

- **Top issues:** one line each for the 3–5 most important findings, with IDs.
- **Most affected areas:** topics with the most findings.
- **Sources most involved:** which sources appear in the most findings (often a sign of an outdated or unofficial source).

## 2. Source inventory

| ID | Title | Type | Owner | Date | Version / status | Precedence level |
|---|---|---|---|---|---|---|
| S1 | | | | | | |

## 3. Conflict register

| ID | Topic | Type | Severity | Confidence | Statement A | Statement B | Decision owner | Status |
|---|---|---|---|---|---|---|---|---|
| C-001 | | V | High | Confirmed | [S1 §4.2] short paraphrase | [S3 00:12:40] short paraphrase | | Open |

## 4. Finding details

Repeat this block for every finding, in register order.

### C-001 — [short title]

- **Type / Severity / Confidence:** V / High / Confirmed
- **Statement A:** [S1 §4.2] "verbatim quote"
- **Statement B:** [S3 00:12:40] "verbatim quote"
- **Why they conflict:** one or two sentences; for logical conflicts, show the case that breaks.
- **Impact if unresolved:** what goes wrong in design, build, test or operation.
- **Question for stakeholders:** neutral, answerable with a decision.
- **Suggested resolution (recommendation):** which statement should prevail and why (precedence, recency, context), or a reconciling option.
- **Decision owner:** role or name.
- **Status:** Open

## 5. Superseded statements

| Older statement | Superseded by | Suggested action |
|---|---|---|
| [S1 §3.1] "…" | [S4 decision log, 2 Jun] "…" | Update S1 §3.1 |

## 6. Terminology issues

| Term | Meanings or variants found | Sources | Suggested glossary entry |
|---|---|---|---|

## 7. Checked and dismissed

| Candidate | Why it is not a conflict |
|---|---|
| Timeout 15 min [S1] vs 30 min [S3] | S1 applies to customers, S3 to internal staff |

## 8. Limitations

- Sources that could not be read fully, were truncated, or were out of scope
- Areas analyzed with less depth
- Assumptions that affect findings
