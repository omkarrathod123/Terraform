module "vm" {
  source = "./virtualmachine"
  name = "testmodule"
}
module "resourcegroup" {
  source = "./resourcegroup"
}