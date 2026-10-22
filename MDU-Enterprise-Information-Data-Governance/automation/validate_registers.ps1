$ErrorActionPreference = 'Stop'
$root = Split-Path -Parent $PSScriptRoot
$checks = @(
  @{ File = 'templates/information-assets.csv'; Required = @('AssetID','AssetName','DataOwner','DataSteward','Classification') },
  @{ File = 'templates/business-glossary.csv'; Required = @('Term','Definition','DataSteward','ApprovalStatus') },
  @{ File = 'templates/risk-register.csv'; Required = @('RiskID','Risk','Owner','Treatment') }
)
$issues = 0
foreach ($check in $checks) {
  $path = Join-Path $root $check.File
  $rows = @(Import-Csv -Path $path)
  $n = 0
  foreach ($row in $rows) {
    $n++
    foreach ($field in $check.Required) {
      if (-not ($row.PSObject.Properties.Name -contains $field) -or [string]::IsNullOrWhiteSpace($row.$field)) {
        Write-Warning "$($check.File) row $n missing $field"
        $issues++
      }
    }
  }
  Write-Host "Checked $($check.File): $($rows.Count) rows"
}
if ($issues -gt 0) { Write-Host "$issues incomplete fields found"; exit 1 }
Write-Host 'Local CSV completeness checks passed.'
