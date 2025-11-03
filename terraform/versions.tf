terraform {
  required_version = ">= 1.5.0"

  required_providers {
    databricks = {
      source  = "databricks/databricks"
      version = ">= 1.33.0"
    }
  }

  # Configure provider cache
  provider_installation {
    dev_overrides {
      "databricks/databricks" = "${path.root}/providers"
    }
    direct {
      exclude = ["databricks/databricks"]
    }
  }
}