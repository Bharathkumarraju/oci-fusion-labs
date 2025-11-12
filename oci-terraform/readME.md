### oci refrsh token
```
bharathkumardasaraju@terraorm$ oci session refresh --profile oci-terraform
Attempting to refresh token from https://auth.ap-singapore-1.oraclecloud.com/v1/authentication/refresh
Successfully refreshed token
bharathkumardasaraju@terraorm$ 
```

### terraform plan
```
bharathkumardasaraju@oci-terraform$ terraform init
Initializing the backend...
Initializing provider plugins...
- Finding latest version of oracle/oci...
- Installing oracle/oci v7.24.0...
- Installed oracle/oci v7.24.0 (signed by a HashiCorp partner, key ID 1533A49284137CEB)
Partner and community providers are signed by their developers.
If you'd like to know more about provider signing, you can read about it here:
https://developer.hashicorp.com/terraform/cli/plugins/signing
Terraform has created a lock file .terraform.lock.hcl to record the provider
selections it made above. Include this file in your version control repository
so that Terraform can guarantee to make the same selections by default when
you run "terraform init" in the future.

Terraform has been successfully initialized!

You may now begin working with Terraform. Try running "terraform plan" to see
any changes that are required for your infrastructure. All Terraform commands
should now work.

If you ever set or change modules or backend configuration for Terraform,
rerun this command to reinitialize your working directory. If you forget, other
commands will detect it and remind you to do so if necessary.
bharathkumardasaraju@oci-terraform$ terraform plan

Terraform used the selected providers to generate the following execution plan. Resource actions are indicated with the following symbols:
  + create

Terraform will perform the following actions:

  # oci_core_vcn.internal will be created
  + resource "oci_core_vcn" "internal" {
      + byoipv6cidr_blocks               = (known after apply)
      + cidr_block                       = "172.16.0.0/20"
      + cidr_blocks                      = (known after apply)
      + compartment_id                   = "ocid1.domain.oc1..aaaaaaaaf57yb3bxzpeibwdk4ohcqtr46xvbnn6iw36dqgq2zdjz7mxoaubq"
      + default_dhcp_options_id          = (known after apply)
      + default_route_table_id           = (known after apply)
      + default_security_list_id         = (known after apply)
      + defined_tags                     = (known after apply)
      + display_name                     = "My internal VCN"
      + dns_label                        = "internal"
      + freeform_tags                    = (known after apply)
      + id                               = (known after apply)
      + ipv6cidr_blocks                  = (known after apply)
      + ipv6private_cidr_blocks          = (known after apply)
      + is_ipv6enabled                   = (known after apply)
      + is_oracle_gua_allocation_enabled = (known after apply)
      + security_attributes              = (known after apply)
      + state                            = (known after apply)
      + time_created                     = (known after apply)
      + vcn_domain_name                  = (known after apply)

      + byoipv6cidr_details (known after apply)
    }

Plan: 1 to add, 0 to change, 0 to destroy.

───────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────

Note: You didn't use the -out option to save this plan, so Terraform can't guarantee to take exactly these actions if you run "terraform apply" now.
bharathkumardasaraju@oci-terraform$ 
```

```
bharathkumardasaraju@oci-terraform$ terraform apply --auto-approve                          

Terraform used the selected providers to generate the following execution plan. Resource actions are indicated with the following symbols:
  + create

Terraform will perform the following actions:

  # oci_core_vcn.internal will be created
  + resource "oci_core_vcn" "internal" {
      + byoipv6cidr_blocks               = (known after apply)
      + cidr_block                       = "172.16.0.0/20"
      + cidr_blocks                      = (known after apply)
      + compartment_id                   = "ocid1.compartment.oc1..aaaaaaaaenqtpxmyuzkggk52rpvqk3l6bkbxpbup4tiexf2wjgm2c6tae2ua"
      + default_dhcp_options_id          = (known after apply)
      + default_route_table_id           = (known after apply)
      + default_security_list_id         = (known after apply)
      + defined_tags                     = (known after apply)
      + display_name                     = "My internal VCN"
      + dns_label                        = "internal"
      + freeform_tags                    = (known after apply)
      + id                               = (known after apply)
      + ipv6cidr_blocks                  = (known after apply)
      + ipv6private_cidr_blocks          = (known after apply)
      + is_ipv6enabled                   = (known after apply)
      + is_oracle_gua_allocation_enabled = (known after apply)
      + security_attributes              = (known after apply)
      + state                            = (known after apply)
      + time_created                     = (known after apply)
      + vcn_domain_name                  = (known after apply)

      + byoipv6cidr_details (known after apply)
    }

Plan: 1 to add, 0 to change, 0 to destroy.
oci_core_vcn.internal: Creating...
oci_core_vcn.internal: Creation complete after 0s [id=ocid1.vcn.oc1.ap-singapore-1.amaaaaaavced2giacro44swnz6tdlfwzly45fjhprntp2wmomnzbxzq7biuq]

Apply complete! Resources: 1 added, 0 changed, 0 destroyed.
bharathkumardasaraju@oci-terraform$ 
```

### Re-authenticate

```
bharathkumardasaraju@oci-terraform$ oci session refresh --profile oci-terraform
ERROR: Cannot refresh token, 'security_token_file' does not exist: /Users/bharathkumardasaraju/.oci/sessions/oci-terraform/token
bharathkumardasaraju@oci-terraform$ oci session authenticate --profile oci-terraform --region ap-singapore-1
    Please switch to newly opened browser window to log in!
    You can also open the following URL in a web browser window to continue:
https://login.ap-singapore-1.oraclecloud.com/v1/oauth2/authorize?action=login&client_id=iaas_console&response_type=token+id_token&nonce=06323cdf-554b-4e13-ab52-ce59de6a3461&scope=openid&public_key=eyJrdHkiOiAiUlNBIiwgIm4iOiAibXg5cXBrV2hmMTBlZTl6WXBDQjJVVnFlRktNZzhnS1o1eEwxMkc4VUlmeHdxWGVuRUdNdjVuMVBOMlowd0RYdlkzNDVaNDJGek52STYyOHFLNHA1dkloZC05RDAtbG04VUxRLWhiVFlPLUNUZTVjRkVlVkJ4aWcteVJMOUljZ0JMTFhlNHZaVVR5XzFVVDE4YjhWaGlNUlNtZEttNElaS2xzNGhwa0FrTlhBSE9EY1YydEphS3RyNDR5TFQ2aFFLem9LS1U3bEtFRjZIUVhHeHBXdGI5cUZvQjZxM0lsakI5RFMxOTJNcElMYkh2ak5tVnkxYzdTajVmLTNDdlJYeURiOV82c2dpVzFZWXJKYjV4OGM1ekh1Wi1xZ2JjM20wdlJqbDNNZmdnNy0tNlpxaDdZaE5Ca0R2YnhNRUhaZk8yR1dRV01HM2h6c3JPWHhyRnZVTmh3IiwgImUiOiAiQVFBQiIsICJraWQiOiAiSWdub3JlZCJ9&redirect_uri=http%3A%2F%2Flocalhost%3A8181
    Completed browser authentication process!
Enter the name of the profile you would like to create: oci-terraform
Config written to: /Users/bharathkumardasaraju/.oci/config

    Try out your newly created session credentials with the following example command:

    oci iam region list --config-file /Users/bharathkumardasaraju/.oci/config --profile oci-terraform --auth security_token

bharathkumardasaraju@oci-terraform$ oci iam region list --config-file /Users/bharathkumardasaraju/.oci/config --profile oci-terraform --auth security_token 
{
  "data": [
    {
      "key": "AMS",
      "name": "eu-amsterdam-1"
    },
    {
      "key": "ARN",
      "name": "eu-stockholm-1"
    },
    {
      "key": "AUH",
      "name": "me-abudhabi-1"
    }
```


### create subnet
```
bharathkumardasaraju@oci-terraform$ terraform plan
oci_core_vcn.internal: Refreshing state... [id=ocid1.vcn.oc1.ap-singapore-1.amaaaaaavced2giacro44swnz6tdlfwzly45fjhprntp2wmomnzbxzq7biuq]

Terraform used the selected providers to generate the following execution plan. Resource actions are indicated with the following symbols:
  + create

Terraform will perform the following actions:

  # oci_core_subnet.dev will be created
  + resource "oci_core_subnet" "dev" {
      + availability_domain        = (known after apply)
      + cidr_block                 = "172.16.0.0/24"
      + compartment_id             = "ocid1.compartment.oc1..aaaaaaaaenqtpxmyuzkggk52rpvqk3l6bkbxpbup4tiexf2wjgm2c6tae2ua"
      + defined_tags               = (known after apply)
      + dhcp_options_id            = (known after apply)
      + display_name               = "Dev subnet 1"
      + dns_label                  = "dev"
      + freeform_tags              = (known after apply)
      + id                         = (known after apply)
      + ipv4cidr_blocks            = (known after apply)
      + ipv6cidr_block             = (known after apply)
      + ipv6cidr_blocks            = (known after apply)
      + ipv6virtual_router_ip      = (known after apply)
      + prohibit_internet_ingress  = (known after apply)
      + prohibit_public_ip_on_vnic = true
      + route_table_id             = (known after apply)
      + security_list_ids          = (known after apply)
      + state                      = (known after apply)
      + subnet_domain_name         = (known after apply)
      + time_created               = (known after apply)
      + vcn_id                     = "ocid1.vcn.oc1.ap-singapore-1.amaaaaaavced2giacro44swnz6tdlfwzly45fjhprntp2wmomnzbxzq7biuq"
      + virtual_router_ip          = (known after apply)
      + virtual_router_mac         = (known after apply)
    }

Plan: 1 to add, 0 to change, 0 to destroy.

───────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────

Note: You didn't use the -out option to save this plan, so Terraform can't guarantee to take exactly these actions if you run "terraform apply" now.
bharathkumardasaraju@oci-terraform$ terraform apply --auto-approve
oci_core_vcn.internal: Refreshing state... [id=ocid1.vcn.oc1.ap-singapore-1.amaaaaaavced2giacro44swnz6tdlfwzly45fjhprntp2wmomnzbxzq7biuq]

Terraform used the selected providers to generate the following execution plan. Resource actions are indicated with the following symbols:
  + create

Terraform will perform the following actions:

  # oci_core_subnet.dev will be created
  + resource "oci_core_subnet" "dev" {
      + availability_domain        = (known after apply)
      + cidr_block                 = "172.16.0.0/24"
      + compartment_id             = "ocid1.compartment.oc1..aaaaaaaaenqtpxmyuzkggk52rpvqk3l6bkbxpbup4tiexf2wjgm2c6tae2ua"
      + defined_tags               = (known after apply)
      + dhcp_options_id            = (known after apply)
      + display_name               = "Dev subnet 1"
      + dns_label                  = "dev"
      + freeform_tags              = (known after apply)
      + id                         = (known after apply)
      + ipv4cidr_blocks            = (known after apply)
      + ipv6cidr_block             = (known after apply)
      + ipv6cidr_blocks            = (known after apply)
      + ipv6virtual_router_ip      = (known after apply)
      + prohibit_internet_ingress  = (known after apply)
      + prohibit_public_ip_on_vnic = true
      + route_table_id             = (known after apply)
      + security_list_ids          = (known after apply)
      + state                      = (known after apply)
      + subnet_domain_name         = (known after apply)
      + time_created               = (known after apply)
      + vcn_id                     = "ocid1.vcn.oc1.ap-singapore-1.amaaaaaavced2giacro44swnz6tdlfwzly45fjhprntp2wmomnzbxzq7biuq"
      + virtual_router_ip          = (known after apply)
      + virtual_router_mac         = (known after apply)
    }

Plan: 1 to add, 0 to change, 0 to destroy.
oci_core_subnet.dev: Creating...
oci_core_subnet.dev: Creation complete after 2s [id=ocid1.subnet.oc1.ap-singapore-1.aaaaaaaabplljkkatgsczbfaqs3xfbfovgnraco22ugvz7zjfuvetptezerq]

Apply complete! Resources: 1 added, 0 changed, 0 destroyed.
bharathkumardasaraju@oci-terraform$ 
```

### update displayname of subnet 

```
bharathkumardasaraju@oci-terraform$ terraform plan                
oci_core_vcn.internal: Refreshing state... [id=ocid1.vcn.oc1.ap-singapore-1.amaaaaaavced2giacro44swnz6tdlfwzly45fjhprntp2wmomnzbxzq7biuq]
oci_core_subnet.dev: Refreshing state... [id=ocid1.subnet.oc1.ap-singapore-1.aaaaaaaabplljkkatgsczbfaqs3xfbfovgnraco22ugvz7zjfuvetptezerq]

Terraform used the selected providers to generate the following execution plan. Resource actions are indicated with the following symbols:
  ~ update in-place

Terraform will perform the following actions:

  # oci_core_subnet.dev will be updated in-place
  ~ resource "oci_core_subnet" "dev" {
      ~ display_name               = "Dev subnet 1" -> "Dev subnet"
        id                         = "ocid1.subnet.oc1.ap-singapore-1.aaaaaaaabplljkkatgsczbfaqs3xfbfovgnraco22ugvz7zjfuvetptezerq"
        # (18 unchanged attributes hidden)
    }

Plan: 0 to add, 1 to change, 0 to destroy.

───────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────

Note: You didn't use the -out option to save this plan, so Terraform can't guarantee to take exactly these actions if you run "terraform apply" now.
bharathkumardasaraju@oci-terraform$ terraform apply --auto-approve
oci_core_vcn.internal: Refreshing state... [id=ocid1.vcn.oc1.ap-singapore-1.amaaaaaavced2giacro44swnz6tdlfwzly45fjhprntp2wmomnzbxzq7biuq]
oci_core_subnet.dev: Refreshing state... [id=ocid1.subnet.oc1.ap-singapore-1.aaaaaaaabplljkkatgsczbfaqs3xfbfovgnraco22ugvz7zjfuvetptezerq]

Terraform used the selected providers to generate the following execution plan. Resource actions are indicated with the following symbols:
  ~ update in-place

Terraform will perform the following actions:

  # oci_core_subnet.dev will be updated in-place
  ~ resource "oci_core_subnet" "dev" {
      ~ display_name               = "Dev subnet 1" -> "Dev subnet"
        id                         = "ocid1.subnet.oc1.ap-singapore-1.aaaaaaaabplljkkatgsczbfaqs3xfbfovgnraco22ugvz7zjfuvetptezerq"
        # (18 unchanged attributes hidden)
    }

Plan: 0 to add, 1 to change, 0 to destroy.
oci_core_subnet.dev: Modifying... [id=ocid1.subnet.oc1.ap-singapore-1.aaaaaaaabplljkkatgsczbfaqs3xfbfovgnraco22ugvz7zjfuvetptezerq]
oci_core_subnet.dev: Modifications complete after 0s [id=ocid1.subnet.oc1.ap-singapore-1.aaaaaaaabplljkkatgsczbfaqs3xfbfovgnraco22ugvz7zjfuvetptezerq]

Apply complete! Resources: 0 added, 1 changed, 0 destroyed.
bharathkumardasaraju@oci-terraform$ 
```
