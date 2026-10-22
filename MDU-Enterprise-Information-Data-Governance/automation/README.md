# Optional automation

`validate_registers.ps1` performs a **local CSV completeness check only**. It does not connect to Microsoft 365 or modify any tenant. Run from repository root in PowerShell:

```powershell
./automation/validate_registers.ps1
```

The output identifies missing mandatory values. This is a data-quality helper, not an audit of live SharePoint permissions.
