resource "aws_ecs_cluster" "ecs_cluster" {
  name = "${var.org_name}-${var.app_name}-${var.service_name}-${var.env}-cluster"

  tags = merge(var.default_tags, {
    Name         = "${var.org_name}-${var.app_name}-${var.service_name}-${var.env}-ecs-cluster"
    map-migrated = var.map_migrated_tag
  })
}