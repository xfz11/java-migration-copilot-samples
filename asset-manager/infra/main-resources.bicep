@description('Primary location for all resources')
param location string

@description('Unique resource token')
param resourceToken string

@description('PostgreSQL database administrator login')
param databaseAdministratorLogin string

@secure()
@description('PostgreSQL database administrator password')
param databaseAdministratorPassword string

// User-Assigned Managed Identity
resource managedIdentity 'Microsoft.ManagedIdentity/userAssignedIdentities@2023-01-31' = {
  name: 'azid${resourceToken}'
  location: location
}

// Container Registry
resource containerRegistry 'Microsoft.ContainerRegistry/registries@2023-07-01' = {
  name: 'azacr${resourceToken}'
  location: location
  sku: {
    name: 'Basic'
  }
  properties: {
    adminUserEnabled: false
  }
}

// ACR Pull role assignment for managed identity
resource acrPullRoleAssignment 'Microsoft.Authorization/roleAssignments@2022-04-01' = {
  name: guid(containerRegistry.id, managedIdentity.id, 'acrpull')
  scope: containerRegistry
  properties: {
    roleDefinitionId: subscriptionResourceId('Microsoft.Authorization/roleDefinitions', '7f951dda-4ed3-4680-a7ca-43fe172d538d')
    principalId: managedIdentity.properties.principalId
    principalType: 'ServicePrincipal'
  }
}

// Log Analytics Workspace
resource logAnalytics 'Microsoft.OperationalInsights/workspaces@2023-09-01' = {
  name: 'azlog${resourceToken}'
  location: location
  properties: {
    sku: {
      name: 'PerGB2018'
    }
  }
}

// Key Vault
resource keyVault 'Microsoft.KeyVault/vaults@2023-07-01' = {
  name: 'azkv${resourceToken}'
  location: location
  properties: {
    sku: {
      family: 'A'
      name: 'standard'
    }
    tenantId: subscription().tenantId
    enableRbacAuthorization: true
    publicNetworkAccess: 'Enabled'
  }
}

// Key Vault Secrets Officer role assignment for managed identity
resource keyVaultSecretsOfficerRoleAssignment 'Microsoft.Authorization/roleAssignments@2022-04-01' = {
  name: guid(keyVault.id, managedIdentity.id, 'secretsofficer')
  scope: keyVault
  properties: {
    roleDefinitionId: subscriptionResourceId('Microsoft.Authorization/roleDefinitions', 'b86a8fe4-44ce-4948-aee5-eccb2c155cd7')
    principalId: managedIdentity.properties.principalId
    principalType: 'ServicePrincipal'
  }
}

// Storage Account
resource storageAccount 'Microsoft.Storage/storageAccounts@2023-05-01' = {
  name: 'azst${resourceToken}'
  location: location
  sku: {
    name: 'Standard_LRS'
  }
  kind: 'StorageV2'
  properties: {
    allowBlobPublicAccess: false
    allowSharedKeyAccess: false
    supportsHttpsTrafficOnly: true
    minimumTlsVersion: 'TLS1_2'
  }
}

// Storage Blob Data Contributor role assignment for managed identity
resource storageBlobDataContributorRoleAssignment 'Microsoft.Authorization/roleAssignments@2022-04-01' = {
  name: guid(storageAccount.id, managedIdentity.id, 'blobcontributor')
  scope: storageAccount
  properties: {
    roleDefinitionId: subscriptionResourceId('Microsoft.Authorization/roleDefinitions', 'ba92f5b4-2d11-453d-a403-e96b0029c9fe')
    principalId: managedIdentity.properties.principalId
    principalType: 'ServicePrincipal'
  }
}

// Blob Container
resource blobContainer 'Microsoft.Storage/storageAccounts/blobServices/containers@2023-05-01' = {
  name: '${storageAccount.name}/default/assets'
  properties: {
    publicAccess: 'None'
  }
}

// Service Bus Namespace
resource serviceBusNamespace 'Microsoft.ServiceBus/namespaces@2022-10-01-preview' = {
  name: 'azsb${resourceToken}'
  location: location
  sku: {
    name: 'Standard'
    tier: 'Standard'
  }
}

// Service Bus Queue
resource serviceBusQueue 'Microsoft.ServiceBus/namespaces/queues@2022-10-01-preview' = {
  name: 'image-processing'
  parent: serviceBusNamespace
  properties: {
    maxSizeInMegabytes: 1024
    defaultMessageTimeToLive: 'P14D'
  }
}

// Service Bus Data Owner role assignment for managed identity
resource serviceBusDataOwnerRoleAssignment 'Microsoft.Authorization/roleAssignments@2022-04-01' = {
  name: guid(serviceBusNamespace.id, managedIdentity.id, 'servicebusowner')
  scope: serviceBusNamespace
  properties: {
    roleDefinitionId: subscriptionResourceId('Microsoft.Authorization/roleDefinitions', '090c5cfd-751d-490a-894a-3ce6f1109419')
    principalId: managedIdentity.properties.principalId
    principalType: 'ServicePrincipal'
  }
}

// PostgreSQL Flexible Server
resource postgreSQLServer 'Microsoft.DBforPostgreSQL/flexibleServers@2023-12-01-preview' = {
  name: 'azpg${resourceToken}'
  location: location
  sku: {
    name: 'Standard_B1ms'
    tier: 'Burstable'
  }
  properties: {
    version: '17'
    administratorLogin: databaseAdministratorLogin
    administratorLoginPassword: databaseAdministratorPassword
    storage: {
      storageSizeGB: 32
      autoGrow: 'Enabled'
    }
    highAvailability: {
      mode: 'Disabled'
    }
  }
}

// PostgreSQL Firewall Rule for Azure Services
resource postgreSQLFirewallRule 'Microsoft.DBforPostgreSQL/flexibleServers/firewallRules@2023-12-01-preview' = {
  name: 'AllowAzureServices'
  parent: postgreSQLServer
  properties: {
    startIpAddress: '0.0.0.0'
    endIpAddress: '0.0.0.0'
  }
}

// PostgreSQL Database
resource postgreSQLDatabase 'Microsoft.DBforPostgreSQL/flexibleServers/databases@2023-12-01-preview' = {
  name: 'assetmanager'
  parent: postgreSQLServer
  properties: {
    charset: 'UTF8'
    collation: 'en_US.UTF8'
  }
}


// Store database connection string in Key Vault
resource databaseConnectionStringSecret 'Microsoft.KeyVault/vaults/secrets@2023-07-01' = {
  name: 'database-connection-string'
  parent: keyVault
  properties: {
    value: 'jdbc:postgresql://${postgreSQLServer.properties.fullyQualifiedDomainName}:5432/${postgreSQLDatabase.name}?sslmode=require'
  }
  dependsOn: [
    keyVaultSecretsOfficerRoleAssignment
  ]
}

// Container Apps Environment
resource containerAppsEnvironment 'Microsoft.App/managedEnvironments@2024-03-01' = {
  name: 'azacae${resourceToken}'
  location: location
  properties: {
    appLogsConfiguration: {
      destination: 'log-analytics'
      logAnalyticsConfiguration: {
        customerId: logAnalytics.properties.customerId
        sharedKey: logAnalytics.listKeys().primarySharedKey
      }
    }
  }
}

// Web Container App
resource webContainerApp 'Microsoft.App/containerApps@2024-03-01' = {
  name: 'azaca-web-${resourceToken}'
  location: location
  tags: {
    'azd-service-name': 'web'
  }
  identity: {
    type: 'UserAssigned'
    userAssignedIdentities: {
      '${managedIdentity.id}': {}
    }
  }
  properties: {
    environmentId: containerAppsEnvironment.id
    configuration: {
      ingress: {
        external: true
        targetPort: 8080
        corsPolicy: {
          allowedOrigins: ['*']
          allowedMethods: ['GET', 'POST', 'PUT', 'DELETE', 'OPTIONS']
          allowedHeaders: ['*']
        }
      }
      registries: [
        {
          server: containerRegistry.properties.loginServer
          identity: managedIdentity.id
        }
      ]
      secrets: [
        {
          name: 'database-connection-string'
          value: 'jdbc:postgresql://${postgreSQLServer.properties.fullyQualifiedDomainName}:5432/${postgreSQLDatabase.name}?sslmode=require'
        }
      ]
    }
    template: {
      containers: [
        {
          image: 'mcr.microsoft.com/azuredocs/containerapps-helloworld:latest'
          name: 'web'
          env: [
            {
              name: 'AZURE_STORAGE_ACCOUNT_NAME'
              value: storageAccount.name
            }
            {
              name: 'AZURE_STORAGE_BLOB_CONTAINER_NAME'
              value: 'assets'
            }
            {
              name: 'AZURE_CLIENT_ID'
              value: managedIdentity.properties.clientId
            }
            {
              name: 'AZURE_SERVICEBUS_NAMESPACE'
              value: serviceBusNamespace.name
            }
            {
              name: 'SPRING_DATASOURCE_URL'
              secretRef: 'database-connection-string'
            }
            {
              name: 'SPRING_DATASOURCE_USERNAME'
              value: databaseAdministratorLogin
            }
            {
              name: 'SPRING_DATASOURCE_PASSWORD'
              value: databaseAdministratorPassword
            }
          ]
          resources: {
            cpu: json('0.25')
            memory: '0.5Gi'
          }
        }
      ]
    }
  }
  dependsOn: [
    acrPullRoleAssignment
    keyVaultSecretsOfficerRoleAssignment
    databaseConnectionStringSecret
  ]
}

// Worker Container App
resource workerContainerApp 'Microsoft.App/containerApps@2024-03-01' = {
  name: 'azaca-worker-${resourceToken}'
  location: location
  tags: {
    'azd-service-name': 'worker'
  }
  identity: {
    type: 'UserAssigned'
    userAssignedIdentities: {
      '${managedIdentity.id}': {}
    }
  }
  properties: {
    environmentId: containerAppsEnvironment.id
    configuration: {
      registries: [
        {
          server: containerRegistry.properties.loginServer
          identity: managedIdentity.id
        }
      ]
      secrets: [
        {
          name: 'database-connection-string'
          value: 'jdbc:postgresql://${postgreSQLServer.properties.fullyQualifiedDomainName}:5432/${postgreSQLDatabase.name}?sslmode=require'
        }
      ]
    }
    template: {
      containers: [
        {
          name: 'worker'
          image: 'mcr.microsoft.com/azuredocs/containerapps-helloworld:latest'
          env: [
            {
              name: 'AZURE_STORAGE_ACCOUNT_NAME'
              value: storageAccount.name
            }
            {
              name: 'AZURE_STORAGE_BLOB_CONTAINER_NAME'
              value: 'assets'
            }
            {
              name: 'AZURE_CLIENT_ID'
              value: managedIdentity.properties.clientId
            }
            {
              name: 'AZURE_SERVICEBUS_NAMESPACE'
              value: serviceBusNamespace.name
            }
            {
              name: 'SPRING_DATASOURCE_URL'
              secretRef: 'database-connection-string'
            }
            {
              name: 'SPRING_DATASOURCE_USERNAME'
              value: databaseAdministratorLogin
            }
            {
              name: 'SPRING_DATASOURCE_PASSWORD'
              value: databaseAdministratorPassword
            }
          ]
          resources: {
            cpu: json('0.25')
            memory: '0.5Gi'
          }
        }
      ]
    }
  }
  dependsOn: [
    acrPullRoleAssignment
    keyVaultSecretsOfficerRoleAssignment
    databaseConnectionStringSecret
  ]
}

// Outputs
output AZURE_CONTAINER_REGISTRY_ENDPOINT string = containerRegistry.properties.loginServer
output WEB_SERVICE_URI string = 'https://${webContainerApp.properties.configuration.ingress.fqdn}'
output DATABASE_CONNECTION_STRING string = 'jdbc:postgresql://${postgreSQLServer.properties.fullyQualifiedDomainName}:5432/${postgreSQLDatabase.name}?sslmode=require'
