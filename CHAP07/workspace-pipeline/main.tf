terraform {
  backend "azurerm" {
    resource_group_name  = "diag-rg"
    storage_account_name = "thiguishdiag"
    container_name       = "terraform"
    key                  = "patatones.tfstate"
  }
}


resource "random_string" "random" {
  length  = 8
  special = true
}

output "str" {
  value = random_string.random.result
}
