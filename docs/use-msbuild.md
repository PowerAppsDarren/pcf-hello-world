# Use MSBuild

# Step #1: Build the Solution

Navigate to your solution directory and run the following command to build the solution and restore any necessary dependencies:

```bash
msbuild /t:build /restore
```

This command will generate a .zip file containing your solution, typically located in the bin\Debug folder.

## Step #2: Deploy the Solution

There are two primary methods to deploy your PCF component:

### Option A: Manual Import via [Power Apps Portal](https://make.powerapps.com/)

- Sign in to the [Power Apps Portal](https://make.powerapps.com/).
- Navigate to Solutions in the left-hand menu.
- Click Import and upload the .zip file from the bin\Debug folder.
- Follow the prompts to complete the import process.

### Option B: Deploy Using Power Platform CLI

- 1. Authenticate with your Dataverse environment:

```bash
# Be sure to replace YOUR_ENVIRONMENT with your value!
#pac auth create --url https://YOUR_ENVIRONMENT.crm.dynamics.com
```
pac auth create --url "orged36c4c0.crm.dynamics.com"
pac auth create --environment "SANDBOX - GIT"
pac pcf push --SupwerPowerLabs-spl spl
pac pcf push --publisher-prefix spl



- 2. Push your component directly:

```bash
# Replace the values below: YOUR_PUBLISHER & YOUR_PREFIX
pac pcf push --YOUR_PUBLISHER-YOUR_PREFIX spl
```

This method is faster for development and testing, as it bypasses the need to build and import a solution package.

---

Back to [Home](../README.md)
