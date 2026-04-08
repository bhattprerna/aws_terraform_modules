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
variable "cluster_name" {
  type = string
}