module "rg" {
  source = "../Child-module/1rg"
  rg     = var.rg
}

module "vnet" {
  depends_on = [module.rg]
  source     = "../Child-module/2vnet"
  vnet       = var.vnet
}

module "subnet" {
  depends_on = [module.vnet]
  source     = "../Child-module/3subnet"
  subnet     = var.subnet
}

module "pip" {
  depends_on = [module.subnet]
  source     = "../Child-module/4pip"
  pip        = var.pip
}

module "nic" {
  depends_on = [module.pip, module.subnet]
  source     = "../Child-module/6nic"
  nic        = var.nic
}
 module "vm" {
  depends_on = [module.nic]
  source = "../Child-module/5vm"
  vm = var.vm
 }
 module "storage" {
  depends_on = [module.rg]
  source = "../Child-module/7stor"
  storage = var.storage
 }

 module "container" {
  depends_on = [module.storage]
  source = "../Child-module/8cont"
  container = var.container
 }