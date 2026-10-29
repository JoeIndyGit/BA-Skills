---
name: requirements-drafting
description: Drafts structured, traceable requirements from raw sources such as meeting notes, interview and workshop transcripts, emails, chats, process descriptions, tickets, legacy documents and existing specifications. Extracts business, stakeholder, functional and non-functional requirements, business rules, data and interface requirements, constraints, assumptions, dependencies and open questions, writes each to quality criteria with acceptance criteria, and traces it to its source. Use when a business analyst asks to draft, write, extract, elicit, derive or formalize requirements or user stories from source material, or to turn notes into a requirements document or backlog.
---

# Drafting requirements from sources

Turn unstructured source material into a draft set of requirements that a business analyst can review with stakeholders: atomic, verifiable, consistently worded, and traced back to where each one came from.

## Step 0 — Settle format and scope

Use what the user specifies. If they provide a template, house style or an existing requirements document (or one is available in the workspace), match its structure, ID scheme and wording conventions. Otherwise apply these defaults and state them at the top of the draft:

- **Style**: structured "shall" statements with acceptance criteria. Alternatives the user may ask for: user stories with Given/When/Then acceptance criteria, or a mix (business and non-functional requirements as statements, functional requirements as user stories).
- **Levels**: all levels present in the sources (business, stakeholder, solution).
- **Scope**: everything in the sources, unless the user names a feature, process or release.

Ask at most one question, and only when the answer would change the output substantially (for example, user stories vs a formal specification for a regulated project).

## Step 1 — Inventory sources

Give each source an ID (`S1`, `S2`, …) and record title, type, author or participants, date, and status (approved, draft, informal). Note the participants and their roles for transcripts and meeting notes; who said something matters for priority and confirmation.

## Step 2 — Extract candidate needs

Read each source and capture every statement that expresses a need, expectation, rule, constraint, decision, problem or pain point. For each, record:

- Location (section, page, timestamp, message) and a short verbatim quote
- Speaker or author and their role, when known
- Modality: must, should, nice to have, won't
- Nature: agreed decision, individual request or opinion, proposal still under discussion, or open question

Treat problems and pain points as evidence of needs ("we re-key every order into SAP by hand" suggests an integration need). Capture questions raised in the sources as open questions and explicit exclusions as out-of-scope items.

## Step 3 — Consolidate

- Merge duplicates and near-duplicates, keeping every source reference.
- Group needs by capability, process or feature.
- Where sources disagree, do not pick a side. Write the requirement with the variants visible, add an open question, and mention that the `requirements-contradictions` skill can analyze the conflict if it is available.

## Step 4 — Classify

Default types and ID prefixes (replace with the house scheme if one exists):

| Prefix | Type | What it captures |
|---|---|---|
| BR | Business requirement | Organizational goal or outcome |
| SR | Stakeholder / user requirement | What a user group needs to be able to do |
| FR | Functional requirement | Solution behavior |
| NFR | Non-functional requirement | Quality attribute with a measurable target |
| RUL | Business rule | Policy, calculation or condition that holds regardless of the system |
| DR | Data requirement | Entities, attributes, quality, retention |
| IR | Interface requirement | Exchange with another system |
| TR | Transition requirement | Migration, training, cutover, temporary needs |
| CON / ASM / DEP | Constraint / assumption / dependency | Limits, things taken as true, things relied on |
| Q | Open question | Information needed to complete or confirm a requirement |

## Step 5 — Write

Follow the [writing rules](references/writing-rules.md). Each requirement has:

- ID and short title
- Statement: one need per requirement, verifiable, solution-neutral unless it is a stated constraint, using glossary terms consistently
- Rationale: why it exists, taken from the source
- Acceptance criteria (functional) or metric and target (non-functional)
- Type, priority, origin, status, source references, related requirements and open questions

**Origin**
- *Stated*: explicitly expressed in a source.
- *Derived*: inferred from a goal, pain point or another requirement. Explain the derivation in the rationale. Derived requirements always need stakeholder confirmation.

**Priority**: use a priority only when the sources indicate one (explicit MoSCoW, "must", "critical for go-live", an agreed decision). Otherwise write "TBC". An individual's wish in a transcript is not an agreed priority.

**Unknown values**: never invent numbers, actors, systems or deadlines. Use a placeholder linked to an open question, for example "within [TBD, see Q-004] seconds".

**Status**: every requirement starts as Draft.

## Step 6 — Capture everything that is not a requirement

Glossary terms, assumptions, constraints, dependencies, risks noticed, out-of-scope items, and open questions with a suggested owner and why each matters.

## Step 7 — Trace

Build a traceability matrix in both directions: source statement to requirement IDs, and requirement to source references. List source statements that were not turned into requirements, with the reason (duplicate, out of scope, opinion not adopted, needs a decision first).

## Output

Use the structure in [output template](references/output-template.md). Default to Markdown. If the user asks for a document or spreadsheet and the environment can produce one, keep the same structure; the requirement tables and traceability matrix map directly to spreadsheet tabs. For backlog tools, offer one item per user story with acceptance criteria.

## Rules

- No invented facts. Every Stated requirement is supported by a quote; every Derived requirement explains its derivation.
- Improve wording for quality, but keep the meaning. If a rewrite might shift the meaning, keep the original quote in the rationale.
- Do not silently drop conflicting, ambiguous or unadopted input; it belongs in open questions or the unused-statements list.
- Write requirements in the language the user writes in, or in the language of the document being extended; quote sources in their original language.

## Before delivering — quality pass

Check every requirement against the checklist in the writing rules: atomic, unambiguous (no weak words), verifiable, traceable, consistent terminology, no solution bias, no duplicates. Fix what you can and flag what needs input.

Finish the draft with a short summary: counts by type, stated vs derived, number of open questions, and the areas with the most open questions. Suggest running the `requirements-contradictions` and `requirements-gap-analysis` skills on the draft, if they are available.
