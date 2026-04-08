resource "aws_ecr_repository" "ecr" {
  name                 = "${var.org_name}-${var.app_name}-${var.service_name}-${var.env}-ecr"
  image_tag_mutability = var.aws_repository_image_tag_mutability

  image_scanning_configuration {
    scan_on_push = var.aws_scanning_configuration
  }

  tags = merge(var.default_tags, {
    Name         = "${var.org_name}-${var.app_name}-${var.service_name}-${var.env}-ecr"
    map-migrated = var.map_migrated_tag
  })
}