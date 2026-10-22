# 05 — EDRMS / Content Manager: conceptual integration only

**What it is:** an Electronic Document and Records Management System (EDRMS) supports official record capture, classification, retention and authorised disposition. OpenText Content Manager is a distinct records-management product, not a Microsoft 365 library feature.

## Proposed workflow (not implemented)
1. HR creates a signed policy or final employee record in an authorised collaboration location.
2. Records Manager determines whether the item must be captured as an official record and the approved record class.
3. An authorised capture mechanism would send record content and metadata to the EDRMS, or staff would manually register it; no connector is provided in this repository.
4. The EDRMS assigns an official record identifier and applies appropriate recordkeeping controls.
5. Staff request retrieval under approved permissions.
6. When eligible for disposal, the Records Manager checks legal holds, schedule and authorisation before disposition.
7. Disposal/transfer evidence is retained.

## Example record metadata
RecordID (synthetic), Title, BusinessOwner, RecordCategory, Classification, CreationDate, CaptureDate, DisposalAuthorityReference, RetentionTrigger, HoldStatus, DisposalDecision, Approver, EvidenceLink.

## Interview honesty
Say "I documented a Content Manager integration and a simulated disposal approval process" rather than "I deployed Content Manager" unless you actually did.
