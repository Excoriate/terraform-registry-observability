variable "is_enabled" {
  type        = bool
  description = <<EOF
  Whether this module will be created or not. It is useful, for stack-composite
modules that conditionally includes resources provided by this module..
EOF
}

variable "aws_region" {
  type        = string
  description = "AWS region to deploy the resources"
}

variable "tags" {
  type        = map(string)
  description = "A map of tags to add to all resources."
  default     = {}
}

/*
-------------------------------------
Custom input variables
-------------------------------------
*/
variable "log_group_config" {
  type = list(object({
    name              = string
    retention_in_days = optional(number, 0)
    skip_destroy      = optional(bool, false)
    kms_key_id        = optional(string, null)
  }))
  description = <<EOF
  A list of objects that contains the configuration for the log groups. Current options are:
- name: The name of the log group
- retention_in_days: The number of days to retain the log events in the specified log group. Valid values are: 1, 3, 5, 7, 14, 30, 60, 90, 120, 150, 180, 365, 400, 545, 731, 1827, and 3653.
- skip_destroy: Whether to skip destroying the log group when destroying the resource. Default is false.
- kms_key_id: The ARN of the CMK to use when encrypting log data. If not provided, uses the default CMK to encrypt the log data.
EOF
  default     = null
}
