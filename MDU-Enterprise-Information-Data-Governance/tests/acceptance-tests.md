# Acceptance tests — do not mark PASS without evidence

| ID | Control | Test procedure | Expected outcome | Status |
|---|---|---|---|---|
| T01 | Site ownership | Inspect test site owners | Named business/technical owners | Not run |
| T02 | Library metadata | Upload synthetic file; set classification and category | Columns show correct values | Not run |
| T03 | Versioning | Edit file; inspect version history | At least two versions visible | Not run |
| T04 | Authorised access | Log in as permitted test user | Correct access granted | Not run |
| T05 | Denied access | Log in as unapproved test user | Access denied | Not run |
| T06 | Teams files | Compare Files tab and backing SharePoint location | Storage relationship verified | Not run |
| T07 | OneDrive sharing | Share with named fictional test user | Correct recipient only | Not run |
| T08 | Steward approvals | Compare decision log and implementation | Decision recorded before access | Not run |
| T09 | Retention | Inspect pilot policy if licensed | Scope and settings documented | Not run |
| T10 | Disposal safety | Run tabletop hold and authorisation scenario | No unapproved deletion | Not run |
| T11 | Service request | Trace sample ticket | Triage and escalation recorded | Not run |
| T12 | Risk review | Inspect risk register | Risk owner and action documented | Not run |

Evidence: link screenshots in `STATUS.md`; redact sensitive tenant and account information.
