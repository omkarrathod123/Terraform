module "vm" {
  source = "./virtualmachine"
  name = "${var.name}-vm"
}
module "resourcegroup" {
  source = "./resourcegroup"
  name = "${var.name}-rg"
}
module "appservice" {
  source = "./appservice"
  name = "${var.name}-app-service"
}