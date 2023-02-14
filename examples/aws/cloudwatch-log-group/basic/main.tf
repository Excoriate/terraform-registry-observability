module "main_module" {
  source     = "../../../../modules/aws/cloudwatch-log-group"
  is_enabled = var.is_enabled
  aws_region = var.aws_region

  log_group_config = var.log_group_config
}
