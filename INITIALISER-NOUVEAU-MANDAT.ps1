param(
    [Parameter(Mandatory = $true)]
    [string]$Client,

    [Parameter(Mandatory = $true)]
    [string]$Destination,

    [string]$DateMandat = (Get-Date -Format 'yyyy-MM')
)

$ErrorActionPreference = 'Stop'

function Convert-ToSafeName {
    param([string]$Value)
    $normalized = $Value.Normalize([Text.NormalizationForm]::FormD)
    $builder = New-Object Text.StringBuilder
    foreach ($character in $normalized.ToCharArray()) {
        $category = [Globalization.CharUnicodeInfo]::GetUnicodeCategory($character)
        if ($category -ne [Globalization.UnicodeCategory]::NonSpacingMark) {
            [void]$builder.Append($character)
        }
    }
    $safe = $builder.ToString().Normalize([Text.NormalizationForm]::FormC)
    $safe = $safe -replace '[^A-Za-z0-9]+', '-'
    return $safe.Trim('-').ToUpperInvariant()
}

$resolvedDestination = [IO.Path]::GetFullPath($Destination)
if (-not (Test-Path -LiteralPath $resolvedDestination -PathType Container)) {
    throw "Le dossier de destination n'existe pas : $resolvedDestination"
}

$safeClient = Convert-ToSafeName -Value $Client
if ([string]::IsNullOrWhiteSpace($safeClient)) {
    throw 'Le nom du client ne produit aucun nom de dossier valide.'
}

$mandateName = "DIAGNOSTIC-$safeClient-$DateMandat"
$mandateRoot = Join-Path $resolvedDestination $mandateName
$resolvedMandate = [IO.Path]::GetFullPath($mandateRoot)
$destinationPrefix = $resolvedDestination.TrimEnd([IO.Path]::DirectorySeparatorChar) + [IO.Path]::DirectorySeparatorChar

if (-not $resolvedMandate.StartsWith($destinationPrefix, [StringComparison]::OrdinalIgnoreCase)) {
    throw 'Le dossier calculé sort de la destination autorisée.'
}
if (Test-Path -LiteralPath $resolvedMandate) {
    throw "Le mandat existe déjà : $resolvedMandate"
}

$templateRoot = Join-Path $PSScriptRoot 'GABARIT-MANDAT'
if (-not (Test-Path -LiteralPath $templateRoot -PathType Container)) {
    throw "Le gabarit est introuvable : $templateRoot"
}

Copy-Item -LiteralPath $templateRoot -Destination $resolvedMandate -Recurse

$controlRoot = Join-Path $resolvedMandate 'INTERNE-RSPIR\00-CONTROLE'
$referenceTarget = Join-Path $controlRoot 'REFERENCES-RSPIR'
New-Item -ItemType Directory -Force -Path $referenceTarget | Out-Null
Copy-Item -LiteralPath (Join-Path $PSScriptRoot 'NOYAU-AGENT.md') -Destination (Join-Path $controlRoot 'NOYAU-AGENT.md')
Copy-Item -LiteralPath (Join-Path $PSScriptRoot 'REFERENCES-RSPIR\REFERENCE-AGENT-DIAGNOSTIC.md') -Destination $referenceTarget
Copy-Item -LiteralPath (Join-Path $PSScriptRoot 'REFERENCES-RSPIR\RADAR-D01-D31.md') -Destination $referenceTarget
Copy-Item -LiteralPath (Join-Path $PSScriptRoot 'CONTROLEURS\CONTROLES-DU-DIAGNOSTIC.md') -Destination (Join-Path $controlRoot 'CONTROLES-DU-DIAGNOSTIC.md')

$manifestPath = Join-Path $resolvedMandate 'INTERNE-RSPIR\00-CONTROLE\MANIFESTE-DU-MANDAT.yaml'
$manifest = Get-Content -LiteralPath $manifestPath -Raw -Encoding UTF8
$manifest = $manifest.Replace('{{CLIENT}}', $Client.Replace('"', "'")).Replace('{{DATE_MANDAT}}', $DateMandat)
Set-Content -LiteralPath $manifestPath -Value $manifest -Encoding UTF8

Write-Output $resolvedMandate
