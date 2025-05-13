# pcf-hello-world

The most basic PCF component you'll ever see

```PowerShell
# Initialize a new PCF project
pac pcf init --namespace SuperPowerLabs --name pcfHelloWorld --template field

npm install

pac solution init --publisher-name "YourPublisherName" --publisher-prefix "yourprefix"


npm run build

#cd C:\+GIT\pcf-hello-world
mkdir Solution
cd Solution
# pac solution init --publisher-name "SuperPowerLabs" --publisher-prefix "spl"

pac solution add-reference --path "..\"
msbuild /t:build /restore

```