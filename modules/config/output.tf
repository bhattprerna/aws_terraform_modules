output "config_env" {
  value = local.config_path
}

output "default_tags" {
  value = lookup(local.config_path, "tags", {})
}