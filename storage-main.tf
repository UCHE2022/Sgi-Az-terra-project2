### Dev Environment Infrastructure
resource "azurerm_resource_group" "meerkat_rg" {
  name     = var.resource_group_name
  location = var.location
}

resource "azurerm_storage_account" "storage_account" {
  name                     = var.storage_account_name
  account_tier             = var.account_tier 
  account_replication_type = "LRS"
  resource_group_name = var.resource_group_name
  location = var.location
}

resource "azurerm_storage_table" "data_table" {
  name                 = "data"
  storage_account_name = var.storage_account_name
}

resource "azurerm_storage_table" "backup_table" {
  name                 = "backup"
  storage_account_name = var.storage_account_name
}

resource "azurerm_storage_table" "audit_table" {
  name                 = "audit"
  storage_account_name = var.storage_account_name
}