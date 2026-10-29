---
name: requirements-gap-analysis
description: Performs requirements gap analysis. Finds missing, incomplete, undefined or untestable requirements in a set of sources or a specification, or compares two baselines (sources vs specification, current vs target state, requirements vs a solution, product or vendor proposal, requirements vs a standard, regulation or policy) and produces a prioritized gap register, coverage matrix and elicitation questions grouped by stakeholder. Use when a business analyst asks for gap analysis, fit-gap analysis, a completeness check, missing requirements, coverage or traceability checks, as-is vs to-be comparison, or workshop questions to close gaps.
---

# Requirements gap analysis

Find what is missing or incomplete, prove it with evidence, and turn every gap into a concrete action or question the business analyst can take to stakeholders.

## Step 0 — Choose the mode

Decide which comparison the user needs. If the request does not make it clear, ask one short question listing the options. If the user is not available to answer, pick the most likely mode and state it at the top of the report.

| Mode | Baseline (what should be there) | Compared set (what is there) | Typical request |
|---|---|---|---|
| Completeness | Completeness checklist and internal consistency | Requirements or sources | "What's missing from these requirements?" |
| Coverage | Needs stated in sources | Requirements specification | "Did the spec capture everything from the workshops?" |
| Current vs target | Target state (to-be) | Current state (as-is) | "What has to change to get from as-is to to-be?" |
| Fit-gap | Requirements | Solution, product, design or vendor proposal | "Does this product meet our requirements?" |
| Compliance | Standard, regulation, policy or contract clauses | Requirements or solution | "Do we cover GDPR / WCAG / policy X?" |

Modes can be combined; report each one separately.

## Step 1 — Inventory sources

Give each source an ID (`S1`, `S2`, …) and record title, type, date, version or status, and which side it belongs to (baseline or compared). Note any source that could not be read fully.

## Step 2 — Break the baseline into checkable items

- **Completeness**: use the [completeness checklist](references/completeness-checklist.md). Tailor it to the domain: drop categories that clearly do not apply and list them as not applicable with a reason.
- **Coverage**: extract each need from the sources as an atomic item (`N-001`, …) with a citation.
- **Current vs target**: list target capabilities, process steps, roles, data, systems, rules and reports.
- **Fit-gap**: one item per requirement, keeping existing requirement IDs.
- **Compliance**: one item per applicable clause or obligation, keeping clause references.

## Step 3 — Assess each item

| Status | Meaning |
|---|---|
| Covered | Fully addressed; cite where |
| Partial | Addressed but incomplete; state exactly what is missing (no acceptance criteria, no exception flow, no measurable target, no owner…) |
| Gap | Not addressed anywhere in the compared set |
| Unclear | Cannot be decided from the sources; needs a question |
| Out of scope | Explicitly excluded; cite it. Not a gap, but listed so scope stays visible |
| Deferred | Explicitly moved to a later phase or release; cite it |

For **fit-gap**, also record the fit type: out of the box, configuration, customization or extension, workaround, not feasible. Only claim a product capability when a source states it; otherwise mark the item Unclear.

**Absence rule:** mark an item as a Gap only after searching every compared source for the item and its synonyms. Write "not found in S1–S4", never "does not exist".

## Step 4 — Apply targeted techniques

Pick the techniques that fit the material instead of running all of them mechanically:

- **Actor–goal**: every actor has goals, every goal has an actor, every role has defined permissions.
- **Flow coverage**: each process or use case has a main flow, alternative flows, exceptions and errors, cancellation, timeouts.
- **Entity lifecycle (CRUD)**: for each key entity, who creates, reads, updates, deletes or archives it, and how long it is kept.
- **State coverage**: every state is reachable and has an exit; every event is handled in each state where it can occur; no dead ends.
- **Decision coverage**: every decision point covers all branches including "otherwise"; behavior exactly at thresholds is defined.
- **Data**: each field has a definition, format, mandatory flag, validation rule and system of record; each report or output has a data source.
- **Integration**: each interface has direction, trigger, frequency, format, error handling and owner.
- **Quality attributes**: each relevant non-functional attribute has a measurable target and conditions.
- **Undefined references**: terms, systems, documents, "TBD" and "see X" that are referenced but never defined or provided.
- **Reverse coverage** (coverage mode): requirements with no supporting source are possible scope creep. Flag them; do not delete them.

## Step 5 — Prioritize

| Priority | Meaning |
|---|---|
| Critical | Blocks build, test or go-live, or creates legal, regulatory, financial or security exposure |
| High | Affects a core process or many users; needed before baseline |
| Medium | Affects a secondary flow; needed before that feature is built |
| Low | Completeness or documentation improvement with limited delivery impact |

Give each gap a recommended action: elicit (with question and stakeholder), write the requirement, make a scope decision, change the solution, or accept and record the risk.

## Step 6 — Turn gaps into questions

For every Gap, Partial and Unclear item, write one concrete elicitation question and direct it at a role. Group the questions by stakeholder so they can be used directly for interview or workshop preparation.

Good: "What should happen to an order that is still unpaid after 14 days: cancel automatically, send a reminder, or escalate to Finance?"
Weak: "Please clarify unpaid orders."

## Output

Use the structure in [report template](references/report-template.md). Default to Markdown. If the user asks for a spreadsheet or document and the environment can produce one, keep the same structure; the coverage matrix and gap register map directly to spreadsheet tabs.

## Rules

- Cite evidence (source ID and location) for every Covered, Partial, Out of scope and Deferred status.
- Do not fill gaps with invented requirements. You may add a candidate wording only when it helps phrase the question, labeled "Proposed, needs confirmation". For full drafting, suggest the `requirements-drafting` skill if it is available.
- Keep contradictions separate from gaps. List any you notice in the "Other observations" section and suggest the `requirements-contradictions` skill if it is available.
- Stay proportionate: do not pad the report with generic checklist gaps that do not fit the domain. Missing localization requirements for an internal, single-country tool is not a gap unless something in the sources suggests otherwise.
- Quote sources in their original language; write the analysis in the language the user writes in.

## Before delivering

- Every Gap was checked against all compared sources.
- Status counts add up to the total number of items, and coverage percentages are correct.
- Every Gap, Partial and Unclear item has a priority, a recommended action and a question with a target role.
- Not-applicable checklist categories are listed with a reason.
- Unreadable or partially read sources are listed under limitations.
