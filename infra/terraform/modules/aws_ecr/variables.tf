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

variable "aws_ecr_name" {
  description = "aws ecr repository name"
  type        = string
}

variable "aws_repository_image_tag_mutability" {
  default = "MUTABLE"
}

variable "aws_scanning_configuration" {
  default = true
}

variable "default_tags" {
  type = map(string)
}

variable "map_migrated_tag" {
  type = string
}