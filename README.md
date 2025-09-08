This project deploys a small but realistic Azure infrastructure using Bicep, separated into dev, test, and prod environments. It creates resource groups, storage accounts, app service plans, and web apps per environment, using parameter files for configuration and applying tags for cost management.

Deployment is handled via Azure CLI with environment-specific parameter files.



1. az login 
2. choose youre subscription
3. deploy the bicep template


```shell
az deployment group create `
  --resource-group <YourResourceGroupName> `
  --template-file ./src/main.bicep `
  --parameters ./src/parameters/test.json `
  --confirm-with-what-if 

az deployment group create `
  --resource-group <YourResourceGroupName> `
  --template-file ./src/main.bicep `
  --parameters ./src/parameters/dev.json `
  --confirm-with-what-if 

az deployment group create `
  --resource-group <YourResourceGroupName> `
  --template-file ./src/main.bicep `
  --parameters ./src/parameters/prod.json `
  --confirm-with-what-if 
```
