aws_region = "us-east-1"
is_enabled = true

log_group_config = [
  {
    name = "test-log-group"
  },
  {
    name = "another-log-group"
  },
  {
    name              = "third-one-more-complex"
    retention_in_days = 1
  }
]
