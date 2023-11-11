output "airflow_users" {
  description = "Current Airflow users"
  value       = module.tf_airflow_users.airflow_users
}
