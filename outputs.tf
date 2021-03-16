output "secrets_list" {
  value     = local.final_secret_list
  sensitive = true
}

output "secrets_string" {
  value     = jsonencode(local.final_secret_list)
  sensitive = true
}

output "secrets_map" {
  value     = local.secrets_map
  sensitive = true
}
