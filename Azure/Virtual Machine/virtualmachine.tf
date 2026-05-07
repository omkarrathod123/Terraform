resource "azurerm_virtual_machine" "practic-VM" {
  name = "${var.name}-vm"
  location = var.location
  resource_group_name = azurerm_resource_group.Practic-Resource-Group.name
  network_interface_ids = [azurerm_network_interface.practic-net-interface.id]
  vm_size = var.vm_size
  delete_data_disks_on_termination = true
  delete_os_disk_on_termination = true
  zones = [ "Zone1" ]

  storage_image_reference {
    publisher = "Canonical"
    offer = "0001-com-ubuntu-server-jammy"
    sku = "22_04-lts"
    version = "latest"
  }
  storage_os_disk {
    name = "myosdisk1"
    caching = "ReadWrite"
    create_option = "FromImage"
    managed_disk_type = "Standard_LRS"
  }
  os_profile {
    computer_name = "ubuntu"
    admin_password = "Root@123"
    admin_username = "root"
  }
  os_profile_linux_config {
    disable_password_authentication = false
  }
  tags = var.tags
}