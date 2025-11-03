variable "subscription_id" {
  description = "Azure subscription ID"
  type        = string
}

variable "resource_group" {
  description = "Resource group name"
  type        = string
}

variable "location" {
  description = "Azure region"
  type        = string
}

variable "databricks_workspace_id" {
  description = "Databricks workspace ARM ID"
  type        = string
}

variable "existing_cluster_id" {
  description = "Existing Databricks cluster ID"
  type        = string
}

variable "email_notification" {
  description = "Email for job notifications"
  type        = string
}

variable "databricks_token" {
  description = "Personal access token for Databricks workspace"
  type        = string
}

variable "databricks_host" {
  description = "Databricks workspace host URL (e.g. https://adb-xxxx.azuredatabricks.net). If empty, DATABRICKS_HOST env var is used."
  type        = string
  default     = ""
}

