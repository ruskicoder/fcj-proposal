# Update lastmod date for Hugo content files
# This script updates the lastmod field in the frontmatter to the current date

param(
    [Parameter(Mandatory=$false)]
    [string]$Path = "content",
    [Parameter(Mandatory=$false)]
    [switch]$Recursive = $true
)

$currentDate = Get-Date -Format "yyyy-MM-dd"

Write-Host "Updating lastmod dates to: $currentDate" -ForegroundColor Green

if ($Recursive) {
    $files = Get-ChildItem -Path $Path -Recurse -Filter "*.md"
} else {
    $files = Get-ChildItem -Path $Path -Filter "*.md"
}

$updatedCount = 0

foreach ($file in $files) {
    $content = Get-Content $file.FullName -Raw
    
    # Check if file has frontmatter with date field
    if ($content -match '(?s)^---\s*\n(.*?)\n---') {
        $frontmatter = $matches[1]
        
        # Check if lastmod exists and update it
        if ($frontmatter -match 'lastmod:') {
            # Update existing lastmod
            $newContent = $content -replace 'lastmod:\s*"[^"]*"', "lastmod: `"$currentDate`""
            
            if ($content -ne $newContent) {
                Set-Content -Path $file.FullName -Value $newContent -NoNewline
                Write-Host "Updated: $($file.Name)" -ForegroundColor Yellow
                $updatedCount++
            }
        }
    }
}

Write-Host "`nTotal files updated: $updatedCount" -ForegroundColor Green
Write-Host "Done!" -ForegroundColor Green
