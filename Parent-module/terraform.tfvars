rg = {
  rg1 = {
    name     = "rgindia"
    location = "central india"
  }
}

vnet = {
  vnet1 = {
    name                = "vnetindia"
   location            = "central india"
   resource_group_name = "rgindia"
   address_space       = ["10.10.0.0/16"]
}
}
subnet = {
  subnet1= {
   name          = "subnetindia"
   resource_group_name  = "rgindia"
   virtual_network_name = "vnetindia"
   address_prefixes     = ["10.10.0.0/24"]

}
}
pip = {
  pip1= {
  name            = "pipindia"
  resource_group_name = "rgindia"
  location            = "central india"
  allocation_method   = "Static"
} 
}

nic = {
  nic1 = {
    name                  = "nicindia"
    location              = "central india"
    resource_group_name   = "rgindia"
    ip_config-name        = "internal"
    subnet_name           = "subnetindia"
    private_ip_allocation = "Dynamic"
    virtual_network_name  = "vnetindia"
    pip_name              = "pipindia"
  }
}

vm = {
  vm01 = {
    vm_name                       = "VMindia"
    location                      = "centralindia"
    resource_group_name           = "rgindia"
    vm_size                       = "Standard_D2s_v3"
    nic_name                      = "nicindia"                  
    admin_username                = "adminuser"
    admin_password                = "Mahakal@1982"
  }
}

  storage = {
    storage1 = {
      name = "ahmedst1728901dt"
      resource_group_name = "rgindia"
      location = "centralindia"
      account_replication_type = "LRS"
      account_tier = "Standard"
    }
  }
  container = {
    container1 = {
      name = "ahmedcontainer"
      storage_account_name ="ahmedst1728901dt"
      container_access_type = "blob"
    }
  }
