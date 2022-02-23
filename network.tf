resource "azurerm_virtual_network" "main" {
    name                = "${local.resource_prefix}-vnet"
    resource_group_name = azurerm_resource_group.main.name
    location            = azurerm_resource_group.main.location

    address_space       = [var.address_space]

    tags = local.common_tags
}

resource "azurerm_subnet" "subnet_01" {
    name                    = "subnet_01"
    resource_group_name     = azurerm_resource_group.main.name
    virtual_network_name    = azurerm_virtual_network.main.name

    address_prefixes        = [var.subnet_01]
}

resource "azurerm_subnet" "subnet_02" {
    name                    = "subnet_02"
    resource_group_name     = azurerm_resource_group.main.name
    virtual_network_name    = azurerm_virtual_network.main.name

    address_prefixes        = [var.subnet_02]
}