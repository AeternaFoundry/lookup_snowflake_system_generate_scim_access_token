data "snowflake_system_generate_scim_access_token" "system_generate_scim_access_token_lookup" {
  for_each = var.system_generate_scim_access_token_lookup

  integration_name = each.value.integration_name
}

