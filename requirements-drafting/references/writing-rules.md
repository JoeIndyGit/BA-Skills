# Writing rules for requirements

## Quality characteristics

Each requirement should be (adapted from ISO/IEC/IEEE 29148):

| Characteristic | Test |
|---|---|
| Necessary | Removing it would leave a real need unmet; it traces to a source or objective |
| Unambiguous | Only one reasonable interpretation; no weak words (see below) |
| Singular | States one thing; no "and", "or", "as well as" joining separate needs |
| Verifiable | A tester could prove it is met: acceptance criteria or a measurable target exist |
| Feasible | Nothing in the sources suggests it cannot be done within known constraints |
| Solution-neutral | Says what, not how, unless the "how" is a stated constraint |
| Consistent | Uses glossary terms; does not conflict with other requirements |
| Traceable | Has source references and a unique ID |

The set as a whole should be complete for the agreed scope, consistent, and free of duplicates.

## Statement patterns

### "Shall" statements

`The [system or actor] shall [action] [object] [condition or qualifier].`

Use "shall" for mandatory requirements. If the house style uses "must" or "should" with defined meanings, follow it, but never mix keywords without definitions.

### EARS patterns (Easy Approach to Requirements Syntax)

Use these to make conditions explicit:

| Pattern | Template |
|---|---|
| Ubiquitous | The [system] shall [response]. |
| Event-driven | When [trigger], the [system] shall [response]. |
| State-driven | While [state], the [system] shall [response]. |
| Unwanted behavior | If [unwanted condition], then the [system] shall [response]. |
| Optional feature | Where [feature is included], the [system] shall [response]. |
| Complex | While [state], when [trigger], the [system] shall [response]. |

### User stories

`As a [role], I want [capability], so that [benefit].`

- The role is a real user role from the sources, not "user" in general.
- The benefit comes from the source; if none is stated, write the most likely benefit and mark the story Derived.
- Check INVEST: independent, negotiable, valuable, estimable, small, testable.

Acceptance criteria in Given/When/Then:

```
Given [precondition]
When [action or event]
Then [observable outcome]
```

Cover the main case, at least one boundary case and at least one negative case.

### Business rules

Declarative and independent of any system: `[Term] must / must not [condition].`

Example: "A refund must not exceed the original payment amount."

### Non-functional requirements

State the attribute, metric, target, conditions and how it will be measured.

Example: "The search results page shall load within 2 seconds at the 95th percentile with 500 concurrent users, measured at the application server."

## Weak words

Replace these with measurable or specific wording. If the source gives no basis for a value, keep a placeholder and raise an open question.

| Weak word or phrase | Ask instead |
|---|---|
| fast, quickly, responsive, real time | Within how many seconds, at what percentile, under what load? |
| user-friendly, intuitive, easy, simple | Which task, completed by whom, in what time or number of steps, with what error rate? |
| flexible, configurable, extensible | What exactly must be changeable, by whom, without a release? |
| robust, reliable, stable | What availability, recovery time or error rate? |
| secure | Which threats, which controls, which standard? |
| support, handle, manage, process | Which specific actions? |
| appropriate, adequate, sufficient, as needed | By what criterion? |
| etc., and so on, including but not limited to | List the full set or reference where it is defined |
| and/or | Split into separate requirements or state the exact logic |
| if possible, ideally, where feasible | Is it mandatory or not? Set priority instead |
| minimize, maximize, optimize | To what target? |
| all, always, never | Confirm there are truly no exceptions |
| TBD (without owner) | Link to an open question with an owner |

## Before and after

**Compound and vague**
- Before: "The system should be fast and allow managers to approve and reject requests easily."
- After:
  - FR-010: "The system shall allow a line manager to approve a pending leave request."
  - FR-011: "The system shall allow a line manager to reject a pending leave request with a mandatory rejection reason."
  - NFR-004: "The system shall display the pending-requests list within [TBD, see Q-003] seconds at the 95th percentile."

**Solution instead of need**
- Before: "Add a dropdown with all countries on the registration page."
- After: "The system shall require the customer to select a country of residence from the list of supported countries during registration." (The dropdown is a design choice; keep it as a UI note only if a source mandates it.)

**Pain point to derived requirement**
- Source [S3 00:14:10]: "Every morning I copy yesterday's orders from the webshop into SAP, it takes an hour."
- Derived: "IR-002: When an order is confirmed in the webshop, the order shall be transferred to SAP without manual re-entry." Origin: Derived. Rationale cites the quote. Open question Q-008: "Is a transfer once a day acceptable, or is near real time required?"

**Untestable rule**
- Before: "Big orders need extra checks."
- After: "RUL-005: An order with a total value above [TBD, see Q-011] must be approved by a sales manager before it is released for fulfilment."

## Final checklist per requirement

- [ ] One need only
- [ ] No weak words left unresolved
- [ ] Acceptance criteria or measurable target present
- [ ] Source references present; origin marked Stated or Derived
- [ ] Glossary terms used consistently
- [ ] Describes need, not design, unless a constraint
- [ ] No duplicate or overlap with another requirement
- [ ] Priority only if supported by the source; otherwise TBC
