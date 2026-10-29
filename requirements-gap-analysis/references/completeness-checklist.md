# Completeness checklist

Use as prompts, not as a form to fill mechanically. Skip categories that clearly do not apply and record them as not applicable with a reason.

## 1. Business context
- Problem statement and business objectives
- Success measures or KPIs, with baseline and target values
- Scope: in scope, out of scope, phases or releases
- Stakeholders and their interests; decision makers and approvers
- Benefits, business case assumptions

## 2. Actors and access
- All user roles and external systems acting on the solution
- Permissions per role (who can see, create, change, approve, delete what)
- Delegation, substitution and absence cover
- Onboarding and offboarding of users; role changes

## 3. Processes and functions
- Main flow for each process or use case
- Alternative flows and variants (by role, region, channel, product)
- Exceptions and error handling; what the user sees and what happens to the data
- Cancellation, reversal, correction and undo
- Approvals and workflow routing, including escalation and timeouts
- Notifications: trigger, recipient, channel, content, timing
- Scheduled and batch processing
- Search, filter, sort, bulk actions where volumes are high

## 4. Business rules
- Calculations: formula, rounding, currency, tax, units
- Validations and their error messages
- Thresholds and behavior exactly at the boundary
- Eligibility and decision rules, including the "otherwise" branch
- Defaults; effective dating and rule versioning
- Exceptions to rules and who may grant them

## 5. Data
- Key entities, attributes and definitions (glossary)
- Format, mandatory flag, validation, allowed values
- System of record and ownership per entity
- Lifecycle: creation, change history, archiving, retention period, deletion or anonymization
- Master and reference data maintenance
- Data quality rules; handling of duplicates
- Migration of existing data: scope, mapping, cleansing, reconciliation

## 6. Integrations
- Systems involved and direction of data flow
- Trigger, frequency, volume, latency
- Format and protocol
- Error handling, retries, reconciliation, monitoring
- Interface ownership and SLAs on both sides

## 7. Reporting and analytics
- Reports, dashboards and exports: audience, purpose, frequency
- Filters, drill-downs, data latency
- Data sources and calculation of each measure

## 8. User experience
- Channels and devices
- Accessibility level (for example WCAG 2.2 AA)
- Languages, localization, time zones, date and number formats
- Help, guidance and onboarding

## 9. Non-functional
- Performance: response time and throughput with stated load and percentile
- Volumes and growth; scalability
- Availability, maintenance windows, support hours
- Backup, recovery point and recovery time objectives (RPO, RTO)
- Security: authentication, authorization, session handling, encryption
- Privacy: personal data inventory, legal basis or consent, data subject rights
- Audit logging: what is logged, who can see it, how long it is kept
- Compliance obligations: industry rules, internal policies
- Maintainability, supportability, compatibility

## 10. Transition and operations
- Rollout approach, cutover plan, parallel run
- Training and user documentation
- Support model and escalation
- Monitoring and alerting
- Decommissioning of replaced systems

## 11. Quality of the requirement set
- Every requirement has a unique ID, owner and priority
- Acceptance criteria or measurable targets present
- Traceability to business objectives
- No unresolved "TBD" without an owner and due date
- Terms used are defined in the glossary
- Assumptions are recorded and validated
- Dependencies and constraints (budget, timeline, technology, regulation) are recorded
