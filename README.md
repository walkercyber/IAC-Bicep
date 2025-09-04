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