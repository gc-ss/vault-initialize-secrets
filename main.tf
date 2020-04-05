provider "vault" {
    version = "~> 2.10"
    address = "${var.endpoint}"
    token = "${var.instance_token}"
}

variable "instance_token" { }
variable "endpoint" { }

resource "vault_mount" "secret_mount" {
    path        = "my_secret"
    type        = "kv"
    description = "my secret mount"
}
