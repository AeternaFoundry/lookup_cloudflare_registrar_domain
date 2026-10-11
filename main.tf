data "cloudflare_registrar_domain" "registrar_domain_lookup" {
  for_each = var.registrar_domain_lookup

  account_id  = each.value.account_id
  domain_name = each.value.domain_name
}

