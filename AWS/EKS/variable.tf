variable "region" {
  type = string
  default = "ap-south-1"
}
variable "eksversion" {
  type = string
  default = "1.32"
  description = "K8s version"
}
variable "node_role_arn" {
  type = string
  default = "arn:aws:iam::491085402179:role/DevKubeNode"
}
variable "cluster_role_arn" {
  type = string
  default = "arn:aws:iam::491085402179:role/DevKubeCluster"
}