resource "aws_ecs_task_definition" "task_definition" {
  family                   = "${var.org_name}-${var.app_name}-${var.service_name}-${var.env}-task-definition"
  network_mode             = var.network_mode
  requires_compatibilities = ["FARGATE"]
  cpu    = var.cpu
  memory = var.memory
  execution_role_arn = var.execution_role_arn
  task_role_arn      = var.task_role_arn
  
  container_definitions = templatefile(
    var.task_definition_file,
    var.task_definition_vars
  )

  tags = merge(
    var.default_tags,
    {
      Name = "${var.org_name}-${var.app_name}-${var.service_name}-${var.env}-task-definition"
      map-migrated = var.map_migrated_tag
    }
  )
}