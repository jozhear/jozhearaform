resource storageaccount 'Microsoft.Storage/storageAccounts@2022-09-01' = {
    name: 'jozhearultrastorage'
    location: 'westus3'
    sku: {
        name: 'Standard_LRS'
    }
    kind: 'StorageV2'
    properties: {
        accessTier: 'Hot'
    }
}
resource appServicePlan 'Microsoft.Web/serverfarms@2022-03-01' = {
    name: 'jozhear-ultra-launch-plan-starter'
    location: 'westus3'
    sku: {
        name: 'F1'
    }
}

resource appServiceApp 'Microsoft.Web/sites@2022-03-01' = {
    name: 'jozhear-ultra-launch'
    location: 'westus3'
    properties: {
        serverFarmId: appServicePlan.id
        httpsOnly: true
    }
}
