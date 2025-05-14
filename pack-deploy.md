

## Package & Deploy

```PowerShell
# Create a timestamp in format 'yyyyMMddhhmmss' (e.g., 20250514115400)
# This format ensures a valid directory name without special characters
$timestamp = (Get-Date).ToString('yyyy-MM-dd-hh-mm-ss-tt')
$simpleDir = "./SolutionPackages/pcfHelloWorld"
$finalDir = "./SolutionPackages/pcfHelloWorld-$timestamp"

# Create directory with underscores (valid for solution init)
New-Item -ItemType Directory -Path $simpleDir -Force
Push-Location $simpleDir

# Initialize the solution
pac solution init --publisher-name "SuperPowerLabs" --publisher-prefix "spl"

# Add reference to the PCF component (while still in the solution directory)
#pac solution add-reference --path "../../pcf-hello-world"
pac solution add-reference --path "../.."


# Now return to the original directory
Pop-Location

# Move the solution to the timestamped directory
New-Item -ItemType Directory -Path $finalDir -Force
Move-Item -Path "$simpleDir/*" -Destination $finalDir
Remove-Item -Path $simpleDir -Force
```

---

pac solution init --publisher-name "PUBLISHER_NAME" --publisher-prefix "YOUR_PREFIX"


pac solution add-reference --path "..\"
msbuild /t:build /restore


pac solution init --publisher-name "YourPublisherName" --publisher-prefix "yourprefix"

pac solution init --publisher-name "SuperPowerLabs" --publisher-prefix "spl"


