# Resource to create ECS service
resource "aws_ecs_service" "ecs_service" {
  name                   = "${var.org_name}-${var.app_name}-${var.service_name}-${var.env}-ecs-service"
  cluster                = var.aws_ecs_cluster_id
  task_definition        = var.aws_ecs_service_task_arn
  desired_count          = var.aws_ecs_service_task_desired_count
  launch_type            = var.aws_ecs_service_launch_type
  platform_version       = var.aws_ecs_service_platform_version
  scheduling_strategy    = var.aws_ecs_service_scheduling_strategy
  enable_execute_command = var.enable_execute_command
  
  network_configuration {
    subnets          = var.aws_ecs_service_vpc_subnet
    assign_public_ip = var.aws_ecs_service_assign_public_ip
    security_groups  = var.aws_ecs_service_sg_id
  }
  tags = merge(var.default_tags, {
    name         = "${var.org_name}-${var.app_name}-${var.service_name}-${var.env}-ecs-service"
    map-migrated = var.map_migrated_tag
  })
}