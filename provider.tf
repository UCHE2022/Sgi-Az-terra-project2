# Azure Provider source and version being used
terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "=3.0.0"
    }
  }
}

# Configure the Microsoft Azure Provider
provider "azurerm" {
  features {
    key_vault {
      purge_soft_delete_on_destroy    = true
      recover_soft_deleted_key_vaults = true
    }
  }

  subscription_id = "9fce9100-*******-68e6953d5ef0"
  tenant_id       = "f504d38d*********0-66d984e00240"
  client_id = "87126eb8-a8c***********-2f13a896aa96"

# resource "azurerm_role_assignment" "Storage Account Contributor" {
#   name               = var.storage_account_contributor
#   scope              = data.azurerm_subscription.primary.id
#   role_definition_id = "${data.azurerm_subscription.subscription.id}${data.azurerm_role_definition.contributor.id}"
#   principal_id       = var.admin_team_principal_id
#}
## only for prod.
# resource "azurerm_role_assignment" "Key Vault Secrets User" {
#   name               = var.Key_vault_secrets_user
#   scope              = data.azurerm_subscription.primary.id
#   role_definition_id = "${data.azurerm_subscription.subscription.id}${data.azurerm_role_definition.contributor.id}"
#   principal_id       = var.product_team_principal_id
# }
}
