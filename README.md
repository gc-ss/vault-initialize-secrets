# Initialize HashiCorp Vault secrets
Tutorial to initialize Vault secrets &amp; ACL with Terraform-Vault provider.

## Motivation
To bootstrap a Vault instance in a safe and predictable way by means of declarative scripting (Terraform).

## Challenges
Initialize a Vault instance require substantial amount of keystrokes and mouse movements to enable:
* Access control list (ACL),
* Secrets,
* Policies,
* Userpass,
* Key pair (client application's role-id &amp; secret-id) automation and 
* Token issuance.

## Solution
Declarative Terraform-Vault (.tf) script to bootstrap Vault initial elements mentioned above. 

## Deployment
1. Download appropriate OS version of [HashiCorp Vault](https://www.vaultproject.io/downloads/),
2. If you don't have vault instance, you may try this on a non-production envionment, enter the commands sequentially in Powershell or cmd,
   ```
   ./vault server -dev
   ```
   For Powershell,
   ```
   $env:VAULT_ADDR="http://127.0.0.1:8200" (for powershell)
   ```
   For Cmd,
   ```
   set VAULT_ADDR=http://127.0.0.1:8200 (for cmd)
   ```
3. Clone and ```cd``` into this repo then run ```terraform init```,
4. Copy and rename file ```terraform.tfvars.dummy``` to ```terraform.tfvars```,
5. Replace ```"<insert variable here>"``` with desired literals,
6. Run ```terraform validate```, make sure it return no errors,
7. Run ```terraform plan```, review changes to the resources, then run ```terraform apply``` then type ```yes```,
8. Now you have preloaded secrets & acl in the Vault instance.

## Built with
* [HashiCorp Vault](https://github.com/hashicorp/vault) - Secret management platform.
* [HashiCorp Terraform](https://github.com/hashicorp/terraform) - Infrastructure as Code platform that interacts with Anything-as-a-Service's (XaaS) administrative/management API endpoint to safely create, alter and teardown XaaS in a safe and efficient manner.
* [Terraform .gitignore](https://github.com/github/gitignore/blob/master/Terraform.gitignore) - .gitignore rules for Terraform repository with some alteration.