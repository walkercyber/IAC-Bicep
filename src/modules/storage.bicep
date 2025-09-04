targetScope = 'resourceGroup'

param storageName string
param storageLocation string
param kind string
param storageSkuName string
param tags object

resource storageAccounts 'Microsoft.Storage/storageAccounts@2025-01-01' = {
  name: storageName
  location: storageLocation
  kind: kind
  sku: {
    name: storageSkuName
  }
  tags: tags
}

output storageAccountName string = storageAccounts.name
