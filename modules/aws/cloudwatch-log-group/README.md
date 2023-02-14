<!-- BEGIN_TF_DOCS -->
# ☁️ AWS Cloudwatch LogGroup
## Description

This module creates en AWS Cloudwatch LogGroup, with the following capabilities:
- Create a LogGroup
- Specify the retention period
- Specify the KMS key to encrypt the logs

---
## Example
Examples of this module's usage are available in the [examples](./examples) folder.

```hcl
module "main_module" {
  source     = "../../../../modules/aws/cloudwatch-log-group"
  is_enabled = var.is_enabled
  aws_region = var.aws_region
}
```

An example of passing a more complex set of functions to this role.
```hcl
aws_region = "us-east-1"
is_enabled = true

groups_config = [
  {
    name = "test-group"
    path = "/"
  },
  {
    name = "test-another"
    path = "/something"
  },
  {
    name = "test-nopath"
  },
]
```
---

## Module's documentation
(This documentation is auto-generated using [terraform-docs](https://terraform-docs.io))
## Providers

No providers.

## Modules

No modules.

## Resources

No resources.

## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | >= 1.3.6 |
| <a name="requirement_aws"></a> [aws](#requirement\_aws) | >= 4.48.0, < 5.0.0 |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_aws_region"></a> [aws\_region](#input\_aws\_region) | AWS region to deploy the resources | `string` | n/a | yes |
| <a name="input_is_enabled"></a> [is\_enabled](#input\_is\_enabled) | Whether this module will be created or not. It is useful, for stack-composite<br>modules that conditionally includes resources provided by this module.. | `bool` | n/a | yes |
| <a name="input_tags"></a> [tags](#input\_tags) | A map of tags to add to all resources. | `map(string)` | `{}` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_aws_region_for_deploy_this"></a> [aws\_region\_for\_deploy\_this](#output\_aws\_region\_for\_deploy\_this) | The AWS region where the module is deployed. |
| <a name="output_is_enabled"></a> [is\_enabled](#output\_is\_enabled) | Whether the module is enabled or not. |
| <a name="output_tags_set"></a> [tags\_set](#output\_tags\_set) | The tags set for the module. |
<!-- END_TF_DOCS -->