<!-- BEGIN_TF_DOCS -->
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | >= 1.4 |
| <a name="requirement_airflow"></a> [airflow](#requirement\_airflow) | 0.13.1 |
| <a name="requirement_random"></a> [random](#requirement\_random) | 3.5.1 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_airflow"></a> [airflow](#provider\_airflow) | 0.13.1 |
| <a name="provider_random"></a> [random](#provider\_random) | 3.5.1 |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [airflow_role.roles](https://registry.terraform.io/providers/DrFaust92/airflow/0.13.1/docs/resources/role) | resource |
| [airflow_user.users](https://registry.terraform.io/providers/DrFaust92/airflow/0.13.1/docs/resources/user) | resource |
| [random_password.password](https://registry.terraform.io/providers/hashicorp/random/3.5.1/docs/resources/password) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_airflow_hostname"></a> [airflow\_hostname](#input\_airflow\_hostname) | n/a | `string` | n/a | yes |
| <a name="input_airflow_password"></a> [airflow\_password](#input\_airflow\_password) | n/a | `string` | n/a | yes |
| <a name="input_airflow_username"></a> [airflow\_username](#input\_airflow\_username) | n/a | `string` | n/a | yes |
| <a name="input_roles"></a> [roles](#input\_roles) | n/a | <pre>list(object({<br>    name = string<br>    actions = list(object({<br>      name     = string<br>      resource = string<br>    }))<br>  }))</pre> | n/a | yes |
| <a name="input_users"></a> [users](#input\_users) | n/a | <pre>list(object({<br>    email      = string<br>    first_name = string<br>    last_name  = string<br>    username   = string<br>    roles      = list(string)<br>  }))</pre> | n/a | yes |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_airflow_users"></a> [airflow\_users](#output\_airflow\_users) | List of Airflow users |
<!-- END_TF_DOCS -->
