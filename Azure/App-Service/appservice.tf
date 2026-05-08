resource "azurerm_app_service_plan" "practic-app-service-plan" {
  name = "${var.name}-asp"
  location = var.location
  resource_group_name = azurerm_resource_group.practic-rg.name

  sku {
    tier = "Standard"
    size = "S1"
  }
}
resource "azurerm_app_service" "practic-app-service" {
  name = "${var.name}-app-service"
  location = var.location
  resource_group_name = azurerm_resource_group.practic-rg.name
  app_service_plan_id = azurerm_app_service_plan.practic-app-service-plan.id

  site_config {
    dotnet_framework_version = "v4.0"
    scm_type = "LocalGit"
  }
  connection_string {
    name = "Nathsarkar"
    type = "SQLServer"
    value = "Server=localhost;Integrated Security=SSPI"
  }
}