# terraform-google-truefoundry-dns

<!-- BEGIN_TF_DOCS -->
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | ~> 1.10 |
| <a name="requirement_google"></a> [google](#requirement\_google) | 6.47 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_google"></a> [google](#provider\_google) | 6.47 |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [google_dns_managed_zone.truefoundry_dns_zone](https://registry.terraform.io/providers/hashicorp/google/6.47/docs/resources/dns_managed_zone) | resource |
| [google_project_iam_custom_role.truefoundry_dns_manger_role](https://registry.terraform.io/providers/hashicorp/google/6.47/docs/resources/project_iam_custom_role) | resource |
| [google_project_iam_member.truefoundry_dns_service_account_role_binding](https://registry.terraform.io/providers/hashicorp/google/6.47/docs/resources/project_iam_member) | resource |
| [google_service_account.truefoundry_dns_service_account](https://registry.terraform.io/providers/hashicorp/google/6.47/docs/resources/service_account) | resource |
| [google_service_account_iam_member.truefoundry_dns_workload_identity_binding](https://registry.terraform.io/providers/hashicorp/google/6.47/docs/resources/service_account_iam_member) | resource |
| [google_dns_managed_zone.existing_zone](https://registry.terraform.io/providers/hashicorp/google/6.47/docs/data-sources/dns_managed_zone) | data source |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_cert_manager_namespace"></a> [cert\_manager\_namespace](#input\_cert\_manager\_namespace) | Kubernetes namespace where cert-manager is installed | `string` | `"cert-manager"` | no |
| <a name="input_cert_manager_service_account"></a> [cert\_manager\_service\_account](#input\_cert\_manager\_service\_account) | Kubernetes service account name for cert-manager | `string` | `"cert-manager"` | no |
| <a name="input_cluster_name"></a> [cluster\_name](#input\_cluster\_name) | n/a | `string` | n/a | yes |
| <a name="input_dns_name"></a> [dns\_name](#input\_dns\_name) | DNS name. e.g - test.example.com. | `string` | n/a | yes |
| <a name="input_dns_role_id"></a> [dns\_role\_id](#input\_dns\_role\_id) | Custom DNS role ID | `string` | `"tfyDNSManagerRole"` | no |
| <a name="input_dns_role_title"></a> [dns\_role\_title](#input\_dns\_role\_title) | Custom DNS role title | `string` | `"dns-manager"` | no |
| <a name="input_dns_service_account_name"></a> [dns\_service\_account\_name](#input\_dns\_service\_account\_name) | DNS Service Account Name | `string` | `"cert-manager-dns"` | no |
| <a name="input_project_id"></a> [project\_id](#input\_project\_id) | Project ID | `string` | n/a | yes |
| <a name="input_truefoundry_dns_manger_role_id_override_enabled"></a> [truefoundry\_dns\_manger\_role\_id\_override\_enabled](#input\_truefoundry\_dns\_manger\_role\_id\_override\_enabled) | Enable override for TrueFoundry DNS Manager Role ID | `bool` | `false` | no |
| <a name="input_truefoundry_dns_manger_role_id_override_name"></a> [truefoundry\_dns\_manger\_role\_id\_override\_name](#input\_truefoundry\_dns\_manger\_role\_id\_override\_name) | Override name for TrueFoundry DNS Manager Role ID | `string` | `""` | no |
| <a name="input_truefoundry_dns_manger_role_name_override_enabled"></a> [truefoundry\_dns\_manger\_role\_name\_override\_enabled](#input\_truefoundry\_dns\_manger\_role\_name\_override\_enabled) | Enable override for TrueFoundry DNS Manager Role name | `bool` | `false` | no |
| <a name="input_truefoundry_dns_manger_role_override_name"></a> [truefoundry\_dns\_manger\_role\_override\_name](#input\_truefoundry\_dns\_manger\_role\_override\_name) | Override name for TrueFoundry DNS Manager Role | `string` | `""` | no |
| <a name="input_truefoundry_dns_service_account_name_override_enabled"></a> [truefoundry\_dns\_service\_account\_name\_override\_enabled](#input\_truefoundry\_dns\_service\_account\_name\_override\_enabled) | Enable override for TrueFoundry DNS Service Account name | `bool` | `false` | no |
| <a name="input_truefoundry_dns_service_account_override_name"></a> [truefoundry\_dns\_service\_account\_override\_name](#input\_truefoundry\_dns\_service\_account\_override\_name) | Override name for TrueFoundry DNS Service Account. | `string` | `""` | no |
| <a name="input_use_existing_dns_zone"></a> [use\_existing\_dns\_zone](#input\_use\_existing\_dns\_zone) | Flag to create DNS zone | `bool` | `false` | no |
| <a name="input_zone_name"></a> [zone\_name](#input\_zone\_name) | Zone name. e.g - tfy-dns | `string` | n/a | yes |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_dns_zone_nameservers"></a> [dns\_zone\_nameservers](#output\_dns\_zone\_nameservers) | Name servers for the DNS zone (only available if DNS zone is created) |
| <a name="output_project_id"></a> [project\_id](#output\_project\_id) | GCP project ID for cert-manager DNS configuration |
| <a name="output_service_account_email"></a> [service\_account\_email](#output\_service\_account\_email) | GCP service account email for cert-manager |
| <a name="output_workload_identity_annotation"></a> [workload\_identity\_annotation](#output\_workload\_identity\_annotation) | Annotation to add to cert-manager Kubernetes service account |
<!-- END_TF_DOCS -->