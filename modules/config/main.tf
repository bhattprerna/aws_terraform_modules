locals {
  config_path = var.config_path != "" ? var.config_path : "${path.root}/config_env"

  environment = var.environment  

  default_tags = merge(var.default_tags, {
    environment      = local.environment
    org              = var.org_name
    application      = var.app_name
    department       = var.department
  })
}