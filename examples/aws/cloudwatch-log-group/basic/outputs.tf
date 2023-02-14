output "is_enabled" {
  value       = var.is_enabled
  description = "Whether the module is enabled or not."
}

output "aws_region_for_deploy_this" {
  value       = module.main_module.aws_region_for_deploy_this
  description = "The AWS region where the module is deployed."
}

output "tags_set" {
  value       = module.main_module.tags_set
  description = "The tags set for the module."
}

/*
-------------------------------------
Custom outputs
-------------------------------------
*/
output "aws_cloudwatch_log_group_name" {
  value       = module.main_module.aws_cloudwatch_log_group_name
  description = "The name of the log group."
}

output "aws_cloudwatch_log_group_arn" {
  value       = module.main_module.aws_cloudwatch_log_group_arn
  description = "The ARN of the log group."
}

output "aws_cloudwatch_log_group_id" {
  value       = module.main_module.aws_cloudwatch_log_group_id
  description = "The ID of the log group."
}

output "aws_cloudwatch_log_group_kms_key_id" {
  value       = module.main_module.aws_cloudwatch_log_group_kms_key_id
  description = "The ID of the KMS key used to encrypt the log group."
}

output "aws_cloudwatch_log_group_retention_in_days" {
  value       = module.main_module.aws_cloudwatch_log_group_retention_in_days
  description = "The number of days to retain the log events in the specified log group."
}
