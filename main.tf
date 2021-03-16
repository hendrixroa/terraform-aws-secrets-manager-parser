data "aws_secretsmanager_secret_version" "secret_app" {
  secret_id = var.secret_name
}

locals {
  secrets_map       = jsondecode(data.aws_secretsmanager_secret_version.secret_app.secret_string)
  final_secret_list = [for key, value in local.secrets_map : map("name", key, "value", value)]
}
