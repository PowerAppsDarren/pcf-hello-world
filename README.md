# pcf-hello-world

The most basic PCF component you'll ever see

- [Initialize Your New Project](init-new-proj.md)
- [Edit the Index.tx File](edit-index.md)



## Run to Test

```PowerShell
# Take all the code and turn it into something the computer
# can understand and run more efficiently (like compiling!)
npm run build

# It is now to run and test out to see if we've like to 
npm start
```

## Package & Deploy

```bash
# Make a new subfolder in your project
mkdir Solution
# Move into that new folder
cd Solution
# Now create your new solution there
pac solution init --publisher-name "PUBLISHER_NAME" --publisher-prefix "YOUR_PREFIX"
```

pac solution add-reference --path "..\"
msbuild /t:build /restore


pac solution init --publisher-name "YourPublisherName" --publisher-prefix "yourprefix"
