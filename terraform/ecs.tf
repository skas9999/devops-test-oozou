resource "aws_ecs_cluster" "aws-ecs-cluster" {
  name = "${var.app_name}-${var.app_env}-cluster"
  tags = {
    Name        = "${var.app_name}-ecs"
    Environment = var.app_env
  }
}

resource "aws_cloudwatch_log_group" "log-group" {
  name = "${var.app_name}-${var.app_env}-logs"

  tags = {
    Application = var.app_name
    Environment = var.app_env
  }
}
