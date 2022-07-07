# Acr resource creating by terraform code
resource "azurerm_container_registry" "acr" {
  name                     = "${var.acr_name}${random_string.myrandom.id}"
  resource_group_name      = "${var.resource_group}_rg"
  location                 = var.location
  sku                      = "Standard"
  admin_enabled            = false
  tags                     = local.common_tags
}




  
  