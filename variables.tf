variable "registrar_domain_lookup" {
  description = <<EOT
Map of registrar_domain_lookup, attributes below
Required:
    - account_id
    - domain_name
EOT

  type = map(object({
    account_id  = string
    domain_name = string
  }))
}

