variable "system_generate_scim_access_token_lookup" {
  description = <<EOT
Map of system_generate_scim_access_token_lookup, attributes below
Required:
    - integration_name
EOT

  type = map(object({
    integration_name = string
  }))
}

