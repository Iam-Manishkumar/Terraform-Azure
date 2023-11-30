# DEPLOY A RESOURCE GROUP

resource "azurerm_resource_group" "disk_rg" {
  name     = "Azure-ManagedDisk-rg-${var.postfix}"
  location = var.location
}

# DEPLOY THE DISK

resource "azurerm_managed_disk" "disk" {
  name                 = "disk-${var.postfix}"
  location             = azurerm_resource_group.disk_rg.location
  resource_group_name  = azurerm_resource_group.disk_rg.name
  storage_account_type = var.disk_type
  create_option        = "Empty"
  disk_size_gb         = 16
}