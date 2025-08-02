provider "azurerm" {
  features {
    key_vault {
      purge_soft_delete_on_destroy    = true
      recover_soft_deleted_key_vaults = true
    }
  }
  use_cli              = false
  // use_oidc must be explicitly set to true when using multiple configurations.
  use_oidc             = true
  client_id_file_path  = var.tfc_azure_dynamic_credentials.default.client_id_file_path
  oidc_token_file_path = var.tfc_azure_dynamic_credentials.default.oidc_token_file_path
  subscription_id      = "6bf22291-b263-47df-8576-e6418cee5e4a"
  tenant_id            = "8a2e1cd7-f42b-43d9-abc5-f6061c3b1545"
}