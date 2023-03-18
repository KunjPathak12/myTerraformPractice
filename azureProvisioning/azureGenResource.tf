resource "azurerm_resource_group" "rg" {
  name     = "${var.rName}"
  location = "${var.location}"
}


//# Configure the Azure provider
resource "azurerm_storage_account" "storageAccount" {
  name                     = "${var.sName}"
  resource_group_name      = "${var.rName}"
  location                 = "${var.location}"
  account_tier             = "Standard"
  account_replication_type = "LRS"
//  allow_blob_public_access = false

  tags = {
    environment = "staging"
  }
}

resource "azurerm_storage_container" "storageContainer" {
  name                  = "${var.cName}"
  storage_account_name  = "${var.sName}"
  container_access_type = "private"
}