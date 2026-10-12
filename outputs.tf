output "system_generate_scim_access_token_lookup_id" {
  description = "Map of id values across all system_generate_scim_access_token_lookup, keyed the same as var.system_generate_scim_access_token_lookup except keys with no id are omitted"
  value       = { for k, v in data.snowflake_system_generate_scim_access_token.system_generate_scim_access_token_lookup : k => v.id if v.id != null && length(v.id) > 0 }
}
output "system_generate_scim_access_token_lookup_access_token" {
  description = "Map of access_token values across all system_generate_scim_access_token_lookup, keyed the same as var.system_generate_scim_access_token_lookup except keys with no access_token are omitted"
  value       = { for k, v in data.snowflake_system_generate_scim_access_token.system_generate_scim_access_token_lookup : k => v.access_token if v.access_token != null && length(v.access_token) > 0 }
  sensitive   = true
}
output "system_generate_scim_access_token_lookup_integration_name" {
  description = "Map of integration_name values across all system_generate_scim_access_token_lookup, keyed the same as var.system_generate_scim_access_token_lookup except keys with no integration_name are omitted"
  value       = { for k, v in data.snowflake_system_generate_scim_access_token.system_generate_scim_access_token_lookup : k => v.integration_name if v.integration_name != null && length(v.integration_name) > 0 }
}

