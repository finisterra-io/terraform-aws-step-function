
<!-- BEGINNING OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | >= 1.5.0 |
| <a name="requirement_aws"></a> [aws](#requirement\_aws) | >= 4.67 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_aws"></a> [aws](#provider\_aws) | >= 4.67 |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [aws_sfn_state_machine.this](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/sfn_state_machine) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_create"></a> [create](#input\_create) | Whether to create Step Function resource | `bool` | `true` | no |
| <a name="input_definition"></a> [definition](#input\_definition) | The Amazon States Language definition of the Step Function | `string` | `""` | no |
| <a name="input_logging_configuration"></a> [logging\_configuration](#input\_logging\_configuration) | Defines what execution history events are logged and where they are logged | `map(string)` | `{}` | no |
| <a name="input_name"></a> [name](#input\_name) | The name of the Step Function | `string` | `""` | no |
| <a name="input_role_arn"></a> [role\_arn](#input\_role\_arn) | The Amazon Resource Name (ARN) of the IAM role to use for this Step Function | `string` | `""` | no |
| <a name="input_tags"></a> [tags](#input\_tags) | Maps of tags to assign to the Step Function | `map(string)` | `{}` | no |
| <a name="input_tracing_configuration"></a> [tracing\_configuration](#input\_tracing\_configuration) | Tracing configuration settings for AWS X-Ray. | `map(string)` | `{}` | no |
| <a name="input_type"></a> [type](#input\_type) | Determines whether a Standard or Express state machine is created. The default is STANDARD. Valid Values: STANDARD \| EXPRESS | `string` | `"STANDARD"` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_state_machine_arn"></a> [state\_machine\_arn](#output\_state\_machine\_arn) | The ARN of the Step Function |
| <a name="output_state_machine_creation_date"></a> [state\_machine\_creation\_date](#output\_state\_machine\_creation\_date) | The date the Step Function was created |
| <a name="output_state_machine_id"></a> [state\_machine\_id](#output\_state\_machine\_id) | The ARN of the Step Function |
| <a name="output_state_machine_status"></a> [state\_machine\_status](#output\_state\_machine\_status) | The current status of the Step Function |
<!-- END OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
