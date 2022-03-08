resource "azurerm_kubernetes_cluster" "main" {
    name                = "${local.resource_prefix}-aks"
    resource_group_name = azurerm_resource_group.main.name
    location            = azurerm_resource_group.main.location
    dns_prefix          = "aks"

    node_resource_group = "${local.resource_prefix}-aks-rg"

    automatic_channel_upgrade = var.aks_upgrade_channel

    maintenance_window {
        allowed {
            day     = var.aks_maintenance_day
            hours   = var.aks_maintenance_hours
        }
    }

    network_profile {
        network_plugin      = "azure"
        load_balancer_sku   = "Standard"
    }

    identity {
        type = "SystemAssigned"
    }

    role_based_access_control {
        enabled = true
    }

    default_node_pool {
        name                = "pool01"
        vnet_subnet_id      = azurerm_subnet.subnet_02.id
        type                = "VirtualMachineScaleSets"
        max_pods            = var.default_node.max_pods
        node_count          = var.default_node.node_count
        enable_auto_scaling = true
        min_count           = var.default_node.node_min_count
        max_count           = var.default_node.node_max_count
        vm_size             = var.default_node.node_size
        enable_host_encryption = var.default_node.node_encryption
    }

    tags = local.common_tags
}