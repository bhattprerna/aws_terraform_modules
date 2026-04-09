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
variable "aws_ecs_cluster_id" {
  description = "ID of an ECS cluster"
  type        = string
  default     = ""  
}
variable "aws_ecs_service_task_arn" {
  description = "Family and revision (family:revision) or full ARN of the task definition that you want to run in your service. Required unless using the EXTERNAL deployment controller. If a revision is not specified, the latest ACTIVE revision is used"
  type        = string
  default     = ""
}
variable "aws_ecs_service_task_desired_count" {
  description = "Number of instances of the task definition"
  type        = string
  default     = "2"
}
variable "aws_ecs_service_launch_type" {
  description = "Launch type on which to run your service. The valid values are EC2, FARGATE, and EXTERNAL. Defaults to EC2"
  type        = string
  default     = "FARGATE"
}
variable "aws_ecs_service_platform_version" {
  description = "Platform version on which to run your service. Only applicable for launch_type set to FARGATE. Defaults to LATEST"
  type        = string
  default     = "LATEST" 
}
variable "aws_ecs_service_scheduling_strategy" {
  description = "Scheduling strategy to use for the service. The valid values are REPLICA and DAEMON. Defaults to REPLICA"
  type        = string
  default     = "REPLICA"  
}
variable "enable_execute_command" {
  description = "Can be used to exec into containers"
  type        = bool
  default     = false
}
variable "aws_ecs_service_vpc_subnet" {
  description = "Subnets associated with the task or service"
  type        = list(string)
  default     = [""] 
}
variable "assign_public_ip" {
  description = "Assign a public IP address to the ENI (Fargate launch type only). Valid values are true or false. Default false"
  type        = bool
  default     = true
}
variable "aws_ecs_service_sg_id" {
  description = "Security Groups associated with the task or service. If you do not specify a Security Group, the default Security Group for the VPC is used"
  type        = list(string)
  default     = [""] 
}