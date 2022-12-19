variable "resource_group_name"{
type = string
description = "Resource Group Name in Azure"
}

variable "location"{
type = string
description = "Resource Group Location in Azure"
default = "East US 2"
}

variable "storage_account_name"{
type = string
description = "Storage Account Name in Azure"
}

variable "account_tier"{
  type = string
  description = "account_tier value"
}

variable "client_secret" {
  type = string
  description = "provide client secret"
}

variable "storage_account_contributor" {
  type = string
  description = "provide your team name"
}

variable "Key_vault_secrets_user" {
  type = string
  description = "provide your team name"
}

variable "product_team_principal_id" {
  type = string
  description = "provide principal id"
}

variable "admin_team_principal_id" {
  type = string
  description = "provide principal id"
}
