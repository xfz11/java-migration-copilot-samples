targetScope = 'subscription'

@minLength(1)
@maxLength(64)
@description('Name of the environment that can be used as part of naming resource convention')
param environmentName string

@minLength(1)
@description('Primary location for all resources')
param location string

@description('Name of the resource group. If empty, a new resource group will be created.')
param resourceGroupName string = 'rg-${environmentName}'

@description('PostgreSQL database administrator login')
param databaseAdministratorLogin string = 'assetadmin'

@secure()
@description('PostgreSQL database administrator password')
param databaseAdministratorPassword string

// Tags that should be applied to all resources.
var tags = {
  'azd-env-name': environmentName
}

var resourceToken = uniqueString(subscription().id, location, environmentName)

// Create a resource group
resource rg 'Microsoft.Resources/resourceGroups@2022-09-01' = {
  name: resourceGroupName
  location: location
  tags: tags
}

// Deploy all resources within the resource group
module resources 'main-resources.bicep' = {
  name: 'resources'
  scope: rg
  params: {
    location: location
    resourceToken: resourceToken
    databaseAdministratorLogin: databaseAdministratorLogin
    databaseAdministratorPassword: databaseAdministratorPassword
  }
}

// Outputs
output RESOURCE_GROUP_ID string = rg.id
output AZURE_CONTAINER_REGISTRY_ENDPOINT string = resources.outputs.AZURE_CONTAINER_REGISTRY_ENDPOINT
output WEB_SERVICE_URI string = resources.outputs.WEB_SERVICE_URI
output DATABASE_CONNECTION_STRING string = resources.outputs.DATABASE_CONNECTION_STRING
