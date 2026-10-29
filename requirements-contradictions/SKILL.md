---
name: requirements-contradictions
description: Analyzes requirement sources (BRDs, specifications, user stories, backlog items, meeting notes, interview transcripts, emails, chats, process descriptions, contracts, regulations) for contradictions, conflicts and inconsistencies within or between them, and produces a traceable conflict register with severity, confidence and resolution questions. Use when a business analyst asks to find contradictions, conflicts, inconsistencies or discrepancies in requirements or source documents, to check whether sources agree, or to validate a new source against an approved baseline.
---

# Requirements contradiction analysis

Find statements in requirement sources that cannot all be true, or cannot all be implemented together, and give the business analyst a traceable register they can take to stakeholders for resolution.

Works on a single document (internal consistency) or across many sources of different types.

## Inputs

- **Sources**: any text the user provides or points to. Typical: BRD/SRS, user stories, backlog items, meeting minutes, workshop notes, interview or call transcripts, emails, chat exports, process descriptions, contracts, policies, regulations.
- **Optional**: focus area or scope, precedence rules, an existing glossary.

If no sources are provided or reachable, ask for them. Otherwise do not block on questions: state assumptions at the top of the report and proceed.

## Step 1 — Build a source inventory

Give each source an ID (`S1`, `S2`, …) and record title, type, author or owner, date, version or status (draft, approved, signed) and precedence level.

Use the user's precedence rules if given. Otherwise apply this default order and state it in the report:

1. Signed contracts, laws, regulations, mandatory policies
2. Approved or baselined requirement documents
3. Draft requirement documents; backlog items with acceptance criteria
4. Decisions recorded in meeting or workshop minutes
5. Emails, chats, transcripts, informal notes

Within the same level, a newer source supersedes an older one only when it clearly addresses the same item. Precedence only informs the suggested resolution; it never resolves a conflict silently.

## Step 2 — Extract atomic statements

Go through each source and pull out every requirement-relevant assertion: capabilities, business rules, values and limits, actors and permissions, sequences and triggers, data definitions, scope in or out, quality targets, dates and milestones, assumptions, decisions.

For each statement record:

- Statement ID (`S2-014`), topic, subject
- What is asserted, normalized into one plain sentence
- Context and conditions: role, region, channel, product, phase or release, time period
- Modality: must, should, may, won't (it matters for conflicts)
- Location: section, page, table, timestamp or message date
- A short verbatim quote

Split compound sentences into separate statements. For large source sets, work source by source; if file tools are available, keep the statement inventory in a working file instead of holding it in memory.

## Step 3 — Normalize terminology

Build a working glossary while extracting:

- **Synonyms**: different terms for the same thing (customer, client, account holder).
- **Homonyms**: one term with different meanings (order = sales order vs purchase order).

Map synonyms before comparing statements. Terminology problems that could cause different interpretations are findings in their own right (type T).

## Step 4 — Compare and detect

Group statements by topic and subject, then compare within each group. Afterwards, scan across groups for logical and quality conflicts that only appear when rules are combined. Use the taxonomy in [conflict types](references/conflict-types.md).

Look in particular for:

- Same subject with incompatible values, rules, actors or sequences
- An item in scope in one source and out of scope (or in another release) in another
- Modality mismatches: mandatory in one source, optional or excluded in another
- Rules that combine into an impossible, circular or undefined outcome
- Requirements that are each feasible but jointly unsatisfiable (keep data 10 years vs delete after 2 years; 1-second response vs a synchronous call to a system with a 5-second SLA)
- Internal inconsistencies within one source: section vs section, text vs table vs diagram vs mockup

## Step 5 — Challenge every candidate

Before recording a candidate, rule out false positives:

- **Different context?** Statements for different roles, regions, channels or phases are variants, not conflicts. If the variant itself is undocumented, mention it as a note.
- **Refinement?** A specific statement that narrows a general one is not a conflict unless the two are incompatible.
- **Superseded?** If a later, equally or more authoritative source explicitly replaces an earlier one, record it as *Superseded* (so the older source can be updated), not as a conflict.
- **Wording only?** If the meaning is the same, it is at most a Low terminology finding.
- **Ambiguity?** If a conflict exists only under one reading, record it with confidence *Possible* and state that reading.

Keep a short list of dismissed candidates with the reason. It shows the analyst what was checked.

## Step 6 — Classify

Give each finding a type (from the taxonomy), a severity and a confidence.

| Severity | Meaning |
|---|---|
| Critical | Blocks design or build, or creates legal, regulatory, financial, security or safety exposure |
| High | Affects a core process, many users or an integration contract; resolve before baseline |
| Medium | Affects a secondary flow or a single feature; resolve before that feature is built |
| Low | Terminology, wording or documentation inconsistency with no behavioral effect |

| Confidence | Meaning |
|---|---|
| Confirmed | Both statements are explicit and clearly incompatible |
| Probable | Incompatible under the most natural reading |
| Possible | Depends on an interpretation; the ambiguity itself needs resolving |

## Step 7 — Propose a resolution path

For each finding provide:

- A neutral question for stakeholders that can be answered with a decision (choose a value, confirm a rule, confirm scope). Do not lead toward one side.
- The decision owner: a role, or a name if the sources make ownership clear.
- A suggested resolution based on precedence and context, clearly labeled as a recommendation, with its rationale.
- The impact if it stays unresolved.

## Output

Use the structure in [report template](references/report-template.md). Order findings by severity, then by topic. The summary gives counts by severity and type, the top issues in one line each, and the sources most involved.

Default to Markdown. If the user asks for a document or spreadsheet and the environment can produce one, keep the same structure; the register table maps directly to spreadsheet columns.

## Rules

- Every finding cites all sides with source ID, location and a short verbatim quote. No citation, no finding.
- Do not invent statements or fill in missing information. Missing information belongs to gap analysis; note it briefly and suggest the `requirements-gap-analysis` skill if it is available.
- Quote sources in their original language; write the analysis in the language the user writes in.
- Do not edit the sources or resolve conflicts on anyone's behalf unless the user explicitly asks.
- Describe statements, not people. Stay neutral about stakeholders who disagree.

## Before delivering

- Every finding has at least two cited statements, or one statement plus a cited rule for logical conflicts.
- The context check was applied; superseded statements are separated from conflicts.
- IDs are consistent and the summary counts match the register.
- Every resolution question can be answered with a decision.
- Unreadable or partially read sources are listed under limitations.
