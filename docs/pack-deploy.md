# Package & Deploy

## Replace Tokens

Notice in the code below there are upper case tokens that are in the following code! These tokens should be replaced by you with values you provide!

- PCF_COMPONENT_NAME
  - This will be the subfolder name that was created when we initialized your project code files with `PAC init...` 
  

```PowerShell
# Create a timestamp in format 'yyyyMMddhhmmss' (e.g., 20250514115400)
# This format ensures a valid directory name without special characters
$timestamp = (Get-Date).ToString('yyyy-MM-dd-hh-mm-ss-tt')
$simpleDir = "./SolutionPackages/PCF_COMPONENT_NAME"                # <-- REPLACE TOKEN! #️⃣ 
$finalDir = "./SolutionPackages/PCF_COMPONENT_NAME-$timestamp"      # <-- REPLACE TOKEN! #️⃣

# Create directory with underscores (valid for solution init)
New-Item -ItemType Directory -Path $simpleDir -Force
# This makes us (the terminal process running this script)
# ...go into our new directory that we just created
Push-Location $simpleDir

# Initialize the solution -- most important command here
# ⚠️ Be sure to replace YOUR_PUBLISHER_NAME & YOUR_PUBLISHER_PREFIX for this next line‼️
# #️⃣ REPLACE TOKEN! ⬇️
#pac solution init --publisher-name "YOUR_PUBLISHER_NAME" --publisher-prefix "YOUR_PUBLISHER_PREFIX"
pac solution init --publisher-name "SuperPowerLabs" --publisher-prefix "spl"

# Add reference to the PCF component (while still in the solution directory)
#pac solution add-reference --path "../../pcf-hello-world"
pac solution add-reference --path "../.."

# This will build the solution
msbuild /t:build /restore

# Now return to the original directory
Pop-Location

# Move the solution to the timestamped directory
New-Item -ItemType Directory -Path $finalDir -Force
Move-Item -Path "$simpleDir/*" -Destination $finalDir
Remove-Item -Path $simpleDir -Force

msbuild /t:build /restore


pac auth create --environment "ENVIRONMENT_NAME"
pac pcf push --publisher-prefix YOUR_PREFIX
```

---

Back to [Home](../README.md)
