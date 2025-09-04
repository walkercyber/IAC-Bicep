targetScope = 'resourceGroup'
param storageSkuName string
param storageKind string
param tags object
param appServiceName string
param location string
param appserviceskuName string
param httpsOnly bool

var environmentName = tags.environment

module storageModules 'Modules/storage.bicep' = {
  params: {
    storageName: 'stg${uniqueString(resourceGroup().id)}${environmentName}'
    storageLocation: location
    storageSkuName: storageSkuName
    kind: storageKind
    tags: tags
  }
}

module appservice 'Modules/appservice.bicep' = {
  params: {
    appServiceName: '${appServiceName}-${environmentName}'
    httpsOnly: httpsOnly
    location: location
    skuName: appserviceskuName
    tags: tags
  }
}
