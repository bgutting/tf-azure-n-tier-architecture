# Create a virtual network
resource "azurerm_virtual_network" "vnet1" {
  name                = "vnet1"
  address_space       = ["10.0.0.0/16"]
  location            = "${azurerm_resource_group.ResourceGrps.location}"
  resource_group_name = "${azurerm_resource_group.ResourceGrps.name}"
}

# Create subnets
resource "azurerm_subnet" "subnet1" {
  name                 = "web_tier"
  resource_group_name  = "${azurerm_resource_group.ResourceGrps.name}"
  virtual_network_name = "${azurerm_virtual_network.vnet1.name}"
  address_prefix       = "10.0.1.0/24"
}

resource "azurerm_subnet" "subnet2" {
  name                 = "business_tier"
  resource_group_name  = "${azurerm_resource_group.ResourceGrps.name}"
  virtual_network_name = "${azurerm_virtual_network.vnet1.name}"
  address_prefix       = "10.0.2.0/24"
}

resource "azurerm_subnet" "subnet3" {
  name                 = "data_tier"
  resource_group_name  = "${azurerm_resource_group.ResourceGrps.name}"
  virtual_network_name = "${azurerm_virtual_network.vnet1.name}"
  address_prefix       = "10.0.3.0/24"
}

resource "azurerm_subnet" "subnet4" {
  name                 = "ADDS"
  resource_group_name  = "${azurerm_resource_group.ResourceGrps.name}"
  virtual_network_name = "${azurerm_virtual_network.vnet1.name}"
  address_prefix       = "10.0.4.0/24"
}

resource "azurerm_subnet" "subnet5" {
  name                 = "management"
  resource_group_name  = "${azurerm_resource_group.ResourceGrps.name}"
  virtual_network_name = "${azurerm_virtual_network.vnet1.name}"
  address_prefix       = "10.0.0.128/25"
}
