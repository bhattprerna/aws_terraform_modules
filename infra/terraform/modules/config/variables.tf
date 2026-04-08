variable "config_path" {
  type    = string
  default = ""
}

variable "environment" {
  type = string
}

variable "org_name" {
  type = string
}

variable "app_name" {
  type = string
}

variable "department" {
  type    = string
  default = ""
}

variable "default_tags" {
  type    = map(string)
  default = {}
}