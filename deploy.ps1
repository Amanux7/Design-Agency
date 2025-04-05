# PowerShell script to build and prepare for deployment to Hostinger

Write-Host "🚀 Building and preparing deployment for Hostinger..." -ForegroundColor Green

# Step 1: Clean up previous build if it exists
if (Test-Path -Path ".\out") {
    Write-Host "Cleaning up previous build..." -ForegroundColor Yellow
    Remove-Item -Path ".\out" -Recurse -Force
}

# Step 2: Build the Next.js app
Write-Host "Building the Next.js app..." -ForegroundColor Cyan
npm run build

# Check if build was successful
if (-not (Test-Path -Path ".\out")) {
    Write-Host "❌ Build failed! The 'out' directory was not created." -ForegroundColor Red
    exit 1
}

# Step 3: Create a deployment package
$timestamp = Get-Date -Format "yyyyMMdd_HHmmss"
$zipFileName = "deployment_$timestamp.zip"

Write-Host "Creating deployment package: $zipFileName..." -ForegroundColor Cyan
Compress-Archive -Path ".\out\*" -DestinationPath ".\$zipFileName"

Write-Host "✅ Deployment package ready!" -ForegroundColor Green
Write-Host "You can now upload the $zipFileName file to your Hostinger account." -ForegroundColor Green
Write-Host "Follow the instructions in hostinger-deployment-guide.md for detailed steps." -ForegroundColor Cyan 