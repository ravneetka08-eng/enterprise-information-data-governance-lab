# Information lifecycle (conceptual process)

```mermaid
flowchart LR
 A[Create or capture] --> B[Classify and assign owner]
 B --> C[Store with metadata]
 C --> D[Access and collaborate]
 D --> E[Review and maintain]
 E --> F{Retention requirement met?}
 F -- No --> E
 F -- Yes --> G{Legal hold / investigation / exception?}
 G -- Yes --> H[Preserve and review hold]
 H --> G
 G -- No --> I[Authorised disposal decision]
 I --> J[Dispose or transfer and log evidence]
```

**Note:** The flow is a proposed policy process, not an automatically functioning workflow. A retention label alone does not guarantee legally authorised destruction.
