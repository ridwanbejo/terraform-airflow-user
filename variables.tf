variable "airflow_hostname" {
  type = string
}

variable "airflow_username" {
  type = string
}

variable "airflow_password" {
  type = string
}

variable "roles" {
  type = list(object({
    name = string
    actions = list(object({
      name     = string
      resource = string
    }))
  }))
}

variable "users" {
  type = list(object({
    email      = string
    first_name = string
    last_name  = string
    username   = string
    roles      = list(string)
  }))
}
