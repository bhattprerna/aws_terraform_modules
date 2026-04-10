variable "ami_id" {
    type = string
}
variable "instance_type" {
    type = string
}
variable "subnet_id" {
  type = string
}
variable "vpc_security_group_ids" {
  type = list(string)
}
variable "key_name" {
  type = string
}
variable "default_tags" {
  type = map(string)
}

variable "map_migrated_tag" {
  type = string
}
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