resource "aws_ecr_repository" "ecr" {
  name = var.aws_ecr_name

  image_scanning_configuration {
    scan_on_push = true
  }
  tags = merge(var.default_tags, {
    Name         = "${var.org_name}-${var.app_name}-${var.service_name}-${var.env}-ecs-cluster"
    map-migrated = var.map_migrated_tag
  })
}