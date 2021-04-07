provider "azurerm" {
  features {  
  }
}

resource "azurerm_virtual_network" "vnet" {
    name = "vnet"
    location = data.azurerm_resource_group.rg.location
    resource_group_name = data.azurerm_resource_group.rg.name
     address_space       = ["10.0.0.0/16"]
  
}
resource "azurerm_subnet" "subnet" {

  name                 = "subnet_name"
  resource_group_name  = data.azurerm_resource_group.rg.name
  virtual_network_name = azurerm_virtual_network.vnet.name
  address_prefixes     = ["10.0.2.0/24"]
}
