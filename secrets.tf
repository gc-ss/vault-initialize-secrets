variable "secret1" { }
variable "secret2" { }

resource "vault_generic_secret" "example" {
  path = "my_secret/foo"
  data_json = <<EOT
{
  "foo":   "${var.secret1}",
  "pizza": "${var.secret2}"
}
EOT
}