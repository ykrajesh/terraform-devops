data "azurerm_resource_group" "rg" {
  name = "learn-c74e54f3-6146-4220-a136-65e426267ce9"
}

provider "azurerm" {
  features {  
  }
}

resource "azurerm_virtual_network" "rg" {
    name = "vnet"
    location = data.azurerm_resource_group.rg.location
    resource_group_name = data.azurerm_resource_group.rg.name
     address_space       = ["10.0.0.0/16"]
  
}
