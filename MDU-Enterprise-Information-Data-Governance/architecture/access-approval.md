# Access request and Data Steward decision flow

```mermaid
flowchart TD
 A[Staff member requests access] --> B[Service desk logs ticket]
 B --> C[Data Steward checks purpose, sensitivity and need]
 C --> D{Approved by delegated Data Owner?}
 D -- No --> E[Reject and record rationale]
 D -- Yes --> F[IT implements group-based access]
 F --> G[Requester validates least-privilege access]
 G --> H[Record approval, expiry and evidence]
 H --> I[Periodic access recertification]
```

**Separation of duties:** Data Owner is accountable for authorisation; Data Steward administers governance and may recommend approval; IT applies permissions. Actual approval delegation must be documented.
