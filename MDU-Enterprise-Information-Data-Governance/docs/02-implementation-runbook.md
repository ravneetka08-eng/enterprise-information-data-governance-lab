# 02 — Practical implementation runbook (beginner)

> These are intended actions, not completed configuration. Microsoft 365 menu names, capabilities and licence requirements can change. Capture what you actually observe.

## Lab 01 — Organisation and roles
1. Read `docs/01-organisation-and-architecture.md`; draw your own reporting chart. **Why:** governance starts with accountable owners.
2. Open `templates/information-assets.csv` and assign each asset a Data Owner, Steward and classification. **Why:** a document without an owner is difficult to govern.
3. Check every asset has an accountable owner; capture your edited CSV. **Expected:** no blank owner. **Interview:** "I established accountability before applying technical controls."

## Lab 02 — Test tenant and accounts
1. Obtain a lawful personal/demo Microsoft 365 tenant; note the subscription and licences privately. **Why:** features vary by tenant.
2. In Microsoft Entra admin center, create fictional test users/groups only where your permissions permit (for example MDU-HR-Readers and MDU-HR-Owners). **Why:** group membership scales better than ad hoc permissions.
3. Verify user/group membership in the admin center and capture a redacted screenshot. **Expected:** least-privilege groups visible. **Interview:** "Entra ID provided identities and groups; the downstream service enforced content permissions."

## Lab 03 — SharePoint information architecture
1. In SharePoint admin center, create a test HR site and a Student Administration site if your licence/role allows. **Why:** departmental boundaries support ownership.
2. In each site create a document library (e.g., HR-Restricted-Records) and decide whether folders or metadata-based views suit the use case. **Why:** avoid uncontrolled deep folder nesting.
3. Verify site owner and library names, record URLs privately, screenshot sanitized structure. **Expected:** separate department sites with named owners. **Interview:** "I designed sites and libraries around business ownership."

## Lab 04 — Metadata and versioning
1. In the test library add columns such as RecordCategory (choice), BusinessOwner (person/text), Classification (choice) and ReviewDate (date). **Why:** metadata enables retrieval and control.
2. Configure library versioning according to the current interface and tenant defaults; upload synthetic sample documents and edit one. **Why:** versions support recovery and accountability.
3. Confirm metadata appears in library views and version history shows edits. **Expected:** classification and version history visible. **Interview:** "Metadata improves findability and policy consistency."

## Lab 05 — Teams and OneDrive
1. Create a test Team only if permitted; inspect its Files tab and corresponding SharePoint site. **Why:** Teams files and SharePoint storage are related but not identical.
2. Upload a synthetic personal working document to OneDrive; compare it with a departmental document in SharePoint. **Why:** distinguish individual drafts from institutional records.
3. Test sharing only between fictional internal test accounts; document the permission and access outcome. **Expected:** authorised account opens file; unauthorised account cannot. **Interview:** "I mapped collaboration to the underlying storage and access model."

## Lab 06 — Data stewardship and access approvals
1. Populate `templates/access-requests.csv` with a synthetic request and business purpose. **Why:** access needs an auditable justification.
2. Have a fictional Data Steward recommend an outcome and designated Data Owner approve/reject it in the log. **Why:** business authorisation is distinct from IT execution.
3. If a test tenant is available, change a test group only after the mock approval; capture both decision and technical verification. **Expected:** documented approval and observed access. **Interview:** "I separated authorisation, implementation and review."

## Lab 07 — Classification and retention
1. Review licence availability and current Purview documentation before attempting sensitivity labels or retention. **Why:** functionality and prerequisites differ.
2. If available, create only a harmless pilot classification/retention policy scoped to synthetic content; otherwise document a manual policy design in `templates/retention-schedule-illustrative.csv`. **Why:** avoid accidental deletion.
3. Verify policy visibility or record 'design-only' if unavailable; never infer effective enforcement from saving a policy. **Expected:** clear proof or a documented limitation. **Interview:** "I tested controls within licensed scope and documented gaps."

## Lab 08 — Lifecycle and formal records simulation
1. Trace a fictional record from creation to capture, storage, access, retention review and authorised disposal. **Why:** governance covers the full lifecycle.
2. Read `docs/05-edrms-content-manager-simulation.md` and fill the disposal decision template without deleting any files. **Why:** Content Manager is a separate EDRMS.
3. Verify hold/exception and authorisation fields are present. **Expected:** a traceable *simulated* record disposition. **Interview:** "I modelled formal recordkeeping separately from collaboration storage."

## Lab 09 — Business glossary
1. Open `templates/business-glossary.csv`; review definitions of student, enrolment and active employee. **Why:** shared terminology avoids inconsistent reporting.
2. Assign each term a Steward, business owner, approval status and version. **Why:** definitions need stewardship.
3. Check that every term has a definition and approver. **Expected:** searchable controlled glossary. **Interview:** "I supported consistent enterprise definitions and stewardship."

## Lab 10 — Service desk and escalation
1. Open `templates/service-requests.csv`; select a sample information-management enquiry. **Why:** users need practical help.
2. Document triage, first-line guidance, escalation owner, resolution and evidence. **Why:** complex privacy/records issues need specialists.
3. Verify the ticket includes timestamps, priority and closure rationale. **Expected:** auditable service response. **Interview:** "I handled routine enquiries and escalated specialist issues."

## Lab 11 — Structure, permission and risk review
1. Use `templates/permission-review.csv` to list sites, groups, owners and expected access. **Why:** access drifts over time.
2. Compare desired vs actual permissions if a tenant exists; otherwise conduct a tabletop review explicitly marked simulated. **Why:** avoid fictional evidence.
3. Log findings in `templates/risk-register.csv`, with owner, treatment and due date. **Expected:** prioritised improvement actions. **Interview:** "I converted audit findings into tracked remediation."

## Lab 12 — Final validation and portfolio
1. Run `tests/acceptance-tests.md` against the real lab or mark tests Not run. **Why:** design is not deployment.
2. Place redacted screenshots in `evidence/screenshots/` and link them in `STATUS.md`. **Why:** proof supports credibility.
3. Update `README.md` implementation status and rehearse `docs/07-interview-guide.md`. **Expected:** accurate public portfolio. **Interview:** "I can explain business rationale, controls, verification and limitations."
