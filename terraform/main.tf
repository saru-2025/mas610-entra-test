
# ================================================
# Phase 2 - MAS610 Terraform Job Deployment
# ================================================

# Use existing cluster instead of creating a new one
variable "existing_cluster_id" {
  description = "Existing Databricks cluster ID"
  type        = string
}

# Simple Databricks job using your existing cluster
resource "databricks_job" "bronze_ingest_job" {
  name               = "MAS610_Bronze_Load"
  existing_cluster_id = var.existing_cluster_id

  notebook_task {
    notebook_path = "/Shared/MAS610_Bronze_Load"
  }

  email_notifications {
    on_failure = [var.email_notification]
  }

  max_concurrent_runs = 1
}
