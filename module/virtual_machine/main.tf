#resource "azurerm_public_ip" "pip" {
  #name                = var.pip_name
  #resource_group_name = var.resource_group_name
  #location            = var.location
  #allocation_method   = "Static"
#}

#resource "azurerm_network_interface" "nic" {
  #name                = var.nic_name
  #location            = var.location
  #resource_group_name = var.resource_group_name

  #ip_configuration {
   # name                          = "internal"
   # subnet_id                     = "/subscriptions/d0d75b6f-d90b-4fa3-b3d5-98e460461aea/resourceGroups/prodrg009/providers/Microsoft.Network/virtualNetworks/prodvnet009/subnets/todo-frontend-subnet"
   # private_ip_address_allocation = "Dynamic"
   # public_ip_address_id=azurerm_public_ip.pip.id
  #}
#}

#resource "azurerm_linux_virtual_machine" "vm" {
  #name                = "frontend-vm"
  #resource_group_name = var.resource_group_name
  #location            = var.location
  #size                = "Standard_d2as_v5"
  #admin_username      = "adminuser123"
  #admin_password =  "adminuser@1234"
  #disable_password_authentication=false

 # network_interface_ids = [
   # azurerm_network_interface.nic.id,
 # ]

  
  #os_disk {
    #caching              = "ReadWrite"
   # storage_account_type = "Standard_LRS"
  #}

  #source_image_reference {
    #publisher = "canonical"
    #offer     = "0001-com-ubuntu-server-jammy"
  #  sku       = "22_04-lts"
  #  version   = "latest"
 # }
#}


