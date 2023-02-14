locals {
  aws_region_to_deploy = var.aws_region

  /*
    * -------------------------------------------------------
    * General options that normalise the input data for this resources.
    * -------------------------------------------------------
  */
  is_log_group_enabled = !var.is_enabled ? false : var.log_group_config == null ? false : length(var.log_group_config) == 0 ? false : true

  log_group_normalised = !local.is_log_group_enabled ? [] : [
    for log in var.log_group_config : {
      name              = lower(trimspace(log["name"]))
      retention_in_days = log["retention_in_days"] == null ? 0 : log["retention_in_days"]
      skip_destroy      = log["skip_destroy"] == null ? false : log["skip_destroy"]
      kms_key_id        = log["kms_key_id"] == null ? "" : log["kms_key_id"]
    }
  ]

  log_group_to_create = !local.is_log_group_enabled ? {} : {
    for log in local.log_group_normalised : log.name => {
      name              = log["name"]
      retention_in_days = log["retention_in_days"]
      skip_destroy      = log["skip_destroy"]
      kms_key_id        = log["kms_key_id"]
    }
  }
}
