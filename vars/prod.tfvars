location = "centralus"
location_short = "cus"
default_node = {
    max_pods        = 240
    node_count      = 1
    node_min_count  = 1
    node_max_count  = 2
    node_size       = "Standard_B4ms"
    node_encryption = true
}