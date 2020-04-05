variable "userpass_pw" { }

resource "vault_auth_backend" "userpass" {
    type = "userpass"
}

resource "vault_generic_secret" "dev_user" {
    path = "auth/userpass/users/dev_user"
    data_json = <<EOT
{
    "password" : "${var.userpass_pw}",
    "policies" : "dev_policy"
}
EOT
    depends_on = [ 
        "vault_auth_backend.userpass",
        "vault_policy.dev_policy"
    ]
}
