variable "airflow_username" {
  type = string
}

variable "airflow_password" {
  type = string
}

variable "airflow_roles" {
  type    = list(any)
  default = []
}

variable "airflow_users" {
  type    = list(any)
  default = []
}
