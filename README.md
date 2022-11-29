# Google firewall Terraform module
Terraform module for creation Google firewall

## Usage

<!-- BEGIN_TF_DOCS -->
## Requirements

| Name                                                                      | Version   |
| ------------------------------------------------------------------------- | --------- |
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | >= 1.0.0  |
| <a name="requirement_google"></a> [google](#requirement\_google)          | >= 4.24.0 |

## Providers

| Name                                                             | Version   |
| ---------------------------------------------------------------- | --------- |
| <a name="requirement_google"></a> [google](#requirement\_google) | >= 4.24.0 |

## Modules

No modules.

## Resources

| Name                                                                                                                                             | Type     |
| ------------------------------------------------------------------------------------------------------------------------------------------------ | -------- |
| [google_compute_firewall.egress_sql_rule](https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/compute_firewall)       | resource |
| [google_compute_firewall.ingress_dataproc_rule](https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/compute_firewall) | resource |
| [google_compute_firewall.ingress_deny_rule](https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/compute_firewall)     | resource |

## Inputs

| Name                                                                                      | Description                                                                | Type     | Default | Required |
| ----------------------------------------------------------------------------------------- | -------------------------------------------------------------------------- | -------- | ------- | :------: |
| <a name="input_project_id"></a> [project\_id](#input\_project\_id)                        | The ID of the project in which the resource belongs                        | `string` | n/a     |   yes    |
| <a name="input_product_base_name"></a> [product\_base\_name](#input\_product\_base\_name) | Cloud resources base name (used to create services)                        | `string` | n/a     |   yes    |
| <a name="input_env"></a> [env](#input\_env)                                               | Variable to mark the environment of the resource (used to create services) | `string` | n/a     |   yes    |
| <a name="input_network"></a> [network](#input\_network)                                   | The name or self_link of the network to attach this firewall to            | `string` | n/a     |   yes    |
| <a name="input_sql_instance_ip"></a> [sql\_instance\_ip](#input\_sql\_instance\_ip)       | The SQL database ip address to connect to                                  | `string` | n/a     |   yes    |
| <a name="input_sql_port"></a> [sql\_port](#input\_sql\_port)                              | The database port number to connect to                                     | `string` | "1433"  |    no    |
| <a name="input_dataproc_range"></a> [dataproc\_range](#input\_dataproc\_range)            | CIDR range for Dataproc subnet                                             | `string` | n/a     |   yes    |

## Outputs

No outputs.
<!-- END_TF_DOCS -->

## License

Apache 2 Licensed. For more information please see [LICENSE](https://github.com/data-platform-hq/terraform-google-firewall/blob/main/LICENSE)
