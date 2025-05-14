# Initialize a new PCF project

```PowerShell
# Replace "YOUR_NAMESPACE_HERE" with your company name, your name, etc.
# Replace "YOUR_PCF_COMPONENT_NAME" with "Hello World", "My First Project", etc.
pac pcf init --namespace YOUR_NAMESPACE_HERE --name YOUR_PCF_COMPONENT_NAME --template field

# Move to the subdirectory where your package.json file is at
# You might already be there!! So you **may not** use CD here
# ⚠️ Look for the directory that has package.json
cd FOLDER_NAME

# EXAMPLE
# pac pcf init --namespace Contoso --name pcfHelloWorld --template field
# Make sure npm is installed into this project
npm install
```


