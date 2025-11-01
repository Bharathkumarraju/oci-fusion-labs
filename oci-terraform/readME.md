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

