resource "vault_policy" "dev_policy" {
  name = "dev_policy"
  policy = <<EOT
path "my_secret/*" {
  capabilities = ["read", "create", "update", "delete", "list", "sudo"]
}
EOT
}