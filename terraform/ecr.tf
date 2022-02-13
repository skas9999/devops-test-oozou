resource "aws_ecr_repository" "aws-ecr" {
  name = "${var.app_name}-${var.app_env}-ecr"
  tags = {
    Name        = "${var.app_name}-ecr"
    Environment = var.app_env
  }
}
