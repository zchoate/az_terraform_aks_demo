variable location_short {
    default = "cus"
}
variable location {
    default = "centralus"
}
variable application_short {
    default = "ERIC"
}
variable application {
    default = "Eagleton Reservation Information Center"
}
variable charge_code {
    default = "PR07"
}
variable resource_owner {
    default = "Leslie Knope"
}
variable environment {
    default = "dev"
}
variable app_version {
    default = "v1"
}

// networking
variable address_space {
    default = "10.50.0.0/16"
}
variable subnet_01 {
    default = "10.50.0.0/24"
}
variable subnet_02 {
    default = "10.50.252.0/22"
}

// aks
variable aks_upgrade_channel {
    default = "stable"
}
variable aks_maintenance_day {
    default = "Sunday"
}
variable aks_maintenance_hours {
    default = [0,1,2,3]
}
// aks default node pool
variable default_node {
    default = {
        max_pods        = 240
        node_count      = 1
        node_min_count  = 1
        node_max_count  = 2
        node_size       = "Standard_B2ms"
        node_encryption = true
    }
}