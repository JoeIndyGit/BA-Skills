# Conflict types

Use the code in the register's Type column. A finding has one primary type; mention a secondary type in the details if useful.

| Code | Type | What to look for |
|---|---|---|
| V | Value | Different numbers, limits, thresholds, durations, dates, quantities or currencies for the same item |
| R | Rule / logic | Business rules that give different outcomes for the same case, or combine into an impossible, circular or undefined outcome |
| S | Scope | Item in scope in one source and out of scope, deferred or assigned to a different release in another |
| A | Actor / responsibility | Different roles performing, approving or owning the same step; conflicting permissions |
| P | Process / sequence | Different order of steps, triggers, preconditions or end states for the same process |
| D | Data | Different definitions, formats, mandatory flags, validation, system of record or retention for the same data |
| M | Modality / priority | Must vs should vs won't; conflicting MoSCoW or priority for the same item |
| Q | Quality attribute | Non-functional targets that cannot be met together, or an NFR that contradicts a functional requirement |
| I | Interface | Different protocol, direction, frequency, format, trigger or owner for the same integration |
| X | Representation | Inside one source: text vs table vs diagram vs mockup vs example disagree |
| T | Terminology | Synonyms or homonyms that lead to different interpretations of the same requirement |

*Superseded* is a status, not a type: a later, equally or more authoritative source explicitly replaces an earlier statement. List these separately so the older source can be updated.

## Examples

**V — Value**
- S1 §4.2: "Sessions expire after 15 minutes of inactivity."
- S3 (workshop 12 May): "Agreed timeout is 30 minutes."
- Check first: do they apply to different user groups (internal staff vs customers)?

**R — Rule / logic**
- S2 RUL-07: "Orders above €10,000 require manager approval."
- S4 email: "Orders from key accounts are approved automatically."
- Conflict for a key-account order of €15,000: no rule says which one wins.

**S — Scope**
- S1 §2: "Mobile app is out of scope for release 1."
- S5 backlog item US-112: "As a field agent, I want to submit inspections from the mobile app" (tagged R1).

**A — Actor**
- S2: "The team lead approves expense claims."
- S6 process map: approval swimlane assigned to Finance.

**P — Process / sequence**
- S1: "The invoice is created after goods receipt is confirmed."
- S3 transcript 00:21:40: "We send the invoice as soon as the order ships."

**D — Data**
- S2 data dictionary: "Customer email is mandatory."
- S4 UI mockup: email field marked optional.

**M — Modality**
- S1: "The system must support SSO."
- S5 MoSCoW list: SSO marked "Could".

**Q — Quality attribute**
- S1 NFR-03: "Availability 99.95% around the clock."
- S7 operations note: "Nightly maintenance window 01:00–03:00 with the system offline."
- Two hours offline every night is about 8% downtime, so both cannot hold.

**I — Interface**
- S2: "Orders are sent to the ERP in real time via API."
- S8 integration spec: "Orders are exported to the ERP in a nightly batch file."

**X — Representation**
- S1 §5 text says three approval levels; the S1 §5 diagram shows two.

**T — Terminology**
- "Account" means a customer organization in S1 and a user login in S3, and requirements in both use the word without qualification.

## Common false positives

Before recording, check whether the difference is explained by:

- **Different context**: role, region, legal entity, channel, product line, customer segment.
- **Different time**: phase, release, transition period vs end state.
- **General vs specific**: "users can export data" and "only admins can export audit logs" can both be true.
- **Explicit exception**: one rule names the other as an exception.
- **Supersession**: a later approved decision replaces an earlier statement. Record as Superseded.
- **Proposal vs decision**: someone's suggestion in a transcript that was not adopted. Check whether the meeting reached a decision before treating it as a requirement.
- **Example vs rule**: illustrative numbers in an example are not a requirement unless stated as one.
- **Rounding or units**: 0.5 hours vs 30 minutes; gross vs net amounts; calendar vs business days. Business vs calendar days *is* a real conflict if both are stated as the rule.
