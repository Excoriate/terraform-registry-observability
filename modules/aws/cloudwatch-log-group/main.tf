resource "aws_cloudwatch_log_group" "this" {
  for_each          = local.log_group_to_create
  name              = each.value["name"]
  retention_in_days = each.value["retention_in_days"]
  kms_key_id        = each.value["kms_key_id"]
  skip_destroy      = each.value["skip_destroy"]

  tags = var.tags
}
