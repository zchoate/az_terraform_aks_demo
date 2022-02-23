locals {
    resource_prefix = lower("${var.location_short}-${var.application_short}-${var.environment}-${var.app_version}")
    common_tags = {
        resource_owner  = var.resource_owner
        application     = var.application
        charge_code     = var.charge_code
    }
}