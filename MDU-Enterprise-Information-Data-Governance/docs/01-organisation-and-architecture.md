# 01 — Understanding the university and systems

## Reporting structure
- University executive: accepts institutional risk and sponsors policy.
- Manager, Information and Data: coordinates information management practice.
- Associate Director, Data Governance: leads governance direction and standards.
- Information and Data Governance Officer: supports policy implementation, staff enquiries, access reviews, metadata and lifecycle controls.
- Departmental Data Owner: accountable for information and authorises use/access under delegation.
- Data Steward: maintains definitions, quality rules, classification and request recommendations.
- IT administrator: configures Entra groups, SharePoint sites and technical permissions after approval.
- Records Manager: interprets approved retention/disposal authorities and recordkeeping requirements.
- Privacy Officer/Legal: advises on personal information and legal obligations.

These are **illustrative MDU roles**, not a claim about Swinburne's internal organisational chart.

## Systems and their boundaries
1. **Entra ID** is the identity provider and group directory. It is not the storage location for SharePoint documents.
2. **SharePoint Online** is the content platform for sites, libraries, metadata, versioning and permissions. Standard Teams channel files typically reside in a connected SharePoint site.
3. **Teams** is a collaboration interface for chat, meetings and channels. Chat-shared files typically live in the sharer's OneDrive; channel files normally use SharePoint (private/shared channels can have separate sites).
4. **OneDrive** is a user's work-file storage service built on SharePoint technology. It is not a substitute for institutional records management.
5. **Microsoft Purview** provides governance and compliance capabilities subject to licensing and workload support. Policies do not magically make every file a formal record.
6. **Content Manager / EDRMS** is a separate specialist recordkeeping system in our target architecture. The repo documents a simulation only; no production integration is built.

## Example: employee contract
HR creates an employee contract -> HR Data Owner defines authorised users -> SharePoint HR restricted library stores it -> metadata identifies classification and record category -> Entra group membership enables authorised access -> approved retention/disposal rules are assessed -> Records Manager supervises formal recordkeeping/authorised disposition. A Teams chat does not grant unrestricted HR access.

## Why this architecture matters in interviews
It distinguishes business ownership from technical administration, collaboration platforms from the identity provider, and retention policy from lawful records disposal.
