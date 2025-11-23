terraform {
  backend "azurerm" {
    resource_group_name  = "rg-tfstate"
    storage_account_name = "myterra202511"
    container_name       = "tfstate"
    key                  = "demo.terraform.tfstate"
    use_oidc             = true
  }
}
