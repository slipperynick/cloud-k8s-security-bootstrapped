provider "azurerm" {
  features {
    key_vault {
      purge_soft_delete_on_destroy    = true
      recover_soft_deleted_key_vaults = true
    }
  }
  use_cli              = false
  use_oidc             = true
  subscription_id      = "6bf22291-b263-47df-8576-e6418cee5e4a"
  tenant_id            = "8a2e1cd7-f42b-43d9-abc5-f6061c3b1545"
}