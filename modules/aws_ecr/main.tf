resource "aws_ecr_repository" "ecr" {
  name = var.aws_ecr_name

  image_scanning_configuration {
    scan_on_push = true
  }
  tags = {
    Name = var.aws_ecr_name
  }
}