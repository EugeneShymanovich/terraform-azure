terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "~> 4.0"
    }
  }
}

provider "azurerm" {
  features {}
  # subscription_id is picked up from the ARM_SUBSCRIPTION_ID env var
  # (set via GitHub Actions secrets / OIDC, or export it locally)
}
