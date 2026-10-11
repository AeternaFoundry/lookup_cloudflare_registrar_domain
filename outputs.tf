output "registrar_domain_lookup_account_id" {
  description = "Map of account_id values across all registrar_domain_lookup, keyed the same as var.registrar_domain_lookup except keys with no account_id are omitted"
  value       = { for k, v in data.cloudflare_registrar_domain.registrar_domain_lookup : k => v.account_id if v.account_id != null && length(v.account_id) > 0 }
}
output "registrar_domain_lookup_domain_name" {
  description = "Map of domain_name values across all registrar_domain_lookup, keyed the same as var.registrar_domain_lookup except keys with no domain_name are omitted"
  value       = { for k, v in data.cloudflare_registrar_domain.registrar_domain_lookup : k => v.domain_name if v.domain_name != null && length(v.domain_name) > 0 }
}

