terraform {
  required_providers {
    oci = {
      source = "oracle/oci"
    }
  }
}

provider "oci" {
  region              = "ap-singapore-1"
  auth                = "SecurityToken"
  config_file_profile = "oci-terraform"
}

resource "oci_core_vcn" "internal" {
  dns_label      = "internal"
  cidr_block     = "172.16.0.0/20"
  compartment_id = "ocid1.domain.oc1..aaaaaaaaf57yb3bxzpeibwdk4ohcqtr46xvbnn6iw36dqgq2zdjz7mxoaubq"
  display_name   = "My internal VCN"
}
