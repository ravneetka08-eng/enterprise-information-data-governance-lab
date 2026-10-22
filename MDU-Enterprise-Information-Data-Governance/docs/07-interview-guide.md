# 07 — Interview guide and STAR practice

## Explain the architecture
"Entra ID supplies identity and group membership; SharePoint stores departmental files, OneDrive individual working files, and Teams provides collaboration with files backed by SharePoint or OneDrive depending on context. Purview can add governance controls where licensed. Data Owners make business access decisions; IT implements access; a separate EDRMS handles formal records under the organisation's recordkeeping framework."

## Questions and strong answer themes
1. **What is data governance?** Accountabilities, policies, definitions and controls ensuring information is trustworthy, secure and used appropriately.
2. **Data Owner vs Data Steward?** Owner is accountable and authorises; Steward coordinates definitions, quality, classifications and decisions under delegation.
3. **SharePoint site vs library vs folder?** Site is collaboration/security context; library is document collection with metadata/versioning; folder is optional hierarchy inside library.
4. **Why metadata?** Consistent classification, discovery, reporting and lifecycle decisions.
5. **How do you manage access?** Business need -> owner approval -> IT group-based permission -> test -> record -> periodic recertification.
6. **How does Teams relate to SharePoint?** Channel files generally use SharePoint; chat files typically use OneDrive; private/shared channels can have separate sites.
7. **How do you handle disposal?** Check approved retention authority, trigger, holds, record class, approvals and evidence before disposition.
8. **How would you respond to over-sharing?** Triage, contain under authorised process, escalate privacy/security, verify corrected permissions and document improvements.
9. **What did you implement?** Refer only to items marked Verified in `STATUS.md`; clearly separate design-only Content Manager simulation.

## STAR exercise
**Situation:** Fictional HR folder had excessive permissions. **Task:** Restore least-privilege access. **Action:** Reviewed ownership, logged request, obtained approval, changed group permissions in a test environment (only if performed), validated negative access and recorded evidence. **Result:** Describe measured test outcome only after verifying; otherwise present as a proposed control scenario.
