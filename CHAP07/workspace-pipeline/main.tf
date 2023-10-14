terraform {
  required_providers {}
  backend "azurerm" {
    backendServiceArm                = "Terraform_ARM"
    backendAzureRmResourceGroupName  = "diag-rg"
    backendAzureRmStorageAccountName = "thiguishdiag"
    backendAzureRmContainerName      = "terraform"
    backendAzureRmKey                = "patatones.tfstate"
  }
}


resource "random_string" "random" {
  length  = 8
  special = true
}

output "str" {
  value = random_string.random.result
}
