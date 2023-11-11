output "airflow_users" {
  description = "List of Airflow users"
  value       = { for item in airflow_user.users : item.username => item.email }
}
