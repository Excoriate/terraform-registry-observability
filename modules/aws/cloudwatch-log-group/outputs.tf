output "is_enabled" {
  value       = var.is_enabled
  description = "Whether the module is enabled or not."
}

output "aws_region_for_deploy_this" {
  value       = local.aws_region_to_deploy
  description = "The AWS region where the module is deployed."
}

output "tags_set" {
  value       = var.tags
  description = "The tags set for the module."
}

/*
-------------------------------------
Custom outputs
-------------------------------------
*/
output "aws_cloudwatch_log_group_name" {
  value       = [for log_group in aws_cloudwatch_log_group.this : log_group.name]
  description = "The name of the log group."
}

output "aws_cloudwatch_log_group_arn" {
  value       = [for log_group in aws_cloudwatch_log_group.this : log_group.arn]
  description = "The ARN of the log group."
}

output "aws_cloudwatch_log_group_id" {
  value       = [for log_group in aws_cloudwatch_log_group.this : log_group.id]
  description = "The ID of the log group."
}

output "aws_cloudwatch_log_group_kms_key_id" {
  value       = [for log_group in aws_cloudwatch_log_group.this : log_group.kms_key_id]
  description = "The ID of the KMS key used to encrypt the log group."
}

output "aws_cloudwatch_log_group_retention_in_days" {
  value       = [for log_group in aws_cloudwatch_log_group.this : log_group.retention_in_days]
  description = "The number of days to retain the log events in the specified log group."
}
