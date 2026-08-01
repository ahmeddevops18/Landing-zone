variable "vm" {}

resource "azurerm_windows_virtual_machine" "vmindia" {
  for_each = var.vm
  name                = each.value.vm_name
  resource_group_name = each.value.resource_group_name
  location            = each.value.location
  size                = each.value.vm_size
  admin_username      = each.value.admin_username
  admin_password      = each.value.admin_password
  network_interface_ids = [
  data.azurerm_network_interface.nic[each.key].id
]

  os_disk {
    caching              = "ReadWrite"
    storage_account_type = "Standard_LRS"
  }

  source_image_reference {
    publisher = "MicrosoftWindowsServer"
    offer     = "WindowsServer"
    sku       = "2016-Datacenter"
    version   = "latest"
  }
}



data "azurerm_network_interface" "nic" {
    for_each = var.vm
    name = each.value.nic_name
    resource_group_name = each.value.resource_group_name
}