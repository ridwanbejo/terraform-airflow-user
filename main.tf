resource "airflow_role" "roles" {
  for_each = { for idx, item in var.roles : item.name => item }

  name = each.value.name

  dynamic "action" {
    for_each = each.value.actions
    content {
      action   = action.value["name"]
      resource = action.value["resource"]
    }
  }
}

resource "random_password" "password" {
  for_each = { for idx, item in var.users : item.username => item }

  length           = 16
  special          = true
  override_special = "!#$%&*()-_=+[]{}<>:?"
}

resource "airflow_user" "users" {
  for_each = { for idx, item in var.users : item.username => item }

  email      = each.value.email
  first_name = each.value.first_name
  last_name  = each.value.last_name
  username   = each.value.username
  password   = random_password.password[each.value.username].result
  roles      = each.value.roles

  depends_on = [airflow_role.roles, random_password.password]
}
