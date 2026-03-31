variable "org_name" {
  type    = string
  default = ""
}
variable "app_name" {
  type    = string
  default = ""
}
variable "service_name" {
  type    = string
  default = ""
}
variable "env" {
  type    = string
  default = ""
}
variable "map_migrated_tag" {
  type = string
}
variable "default_tags" {
  type    = map(string)
  default = {}
}
variable "network_mode" {
    type = string
}
variable "cpu" {
    type = number
}
variable "memory" {
    type = number
}
variable "execution_role_arn" {
    type = string
}
variable "task_definition_file" {
  type = any
}
variable "task_definition_vars" {
  default = null
}