locals {
  vault_user_data = templatefile(
    "${path.module}/templates/install_vault.sh.tpl",
    {
      key_vault_key_name    = var.key_vault_key_name
      key_vault_name        = var.key_vault_name
      key_vault_secret_id   = var.key_vault_secret_id
      leader_tls_servername = var.leader_tls_servername
      resource_group_name   = var.resource_group.name
      subscription_id       = var.subscription_id
      tenant_id             = var.tenant_id
      vm_scale_set_name     = var.vm_scale_set_name
      pfx_password          = var.pfx_password
    }
  )
}
