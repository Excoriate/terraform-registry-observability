module "main_module" {
  source     = "../../../modules/cloudwatch-log-group"
  is_enabled = var.is_enabled
  aws_region = var.aws_region
}
