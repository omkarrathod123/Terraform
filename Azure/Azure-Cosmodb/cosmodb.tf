resource "azurerm_cosmosdb_account" "practic-cosmosdb-account" {
  name = "${var.name}-cosmosdb-accout"
  location = var.location
  resource_group_name = azurerm_resource_group.practic-resource-group.name
  offer_type = var.offer_type
  kind = "MongoDB"

  automatic_failover_enabled = true

  capabilities {
    name = "EnableAggregationPipeline"
  }
  capabilities {
    name = "mongoEnableDocLevelTTL"
  }
  capabilities {
    name = "MongoDBv3.4"
  }
  capabilities {
    name = "EnableMongo"
  }

  consistency_policy {
    consistency_level       = "BoundedStaleness"
    max_interval_in_seconds = 300
    max_staleness_prefix    = 100000
  }
  geo_location {
    location = "eastus"
    failover_priority = 1
  }
  geo_location {
    location = "westus"
    failover_priority = 0
  }
}