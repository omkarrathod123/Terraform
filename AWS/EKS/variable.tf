variable "region" {
  type = string
  default = "ap-south-1"
}
variable "name" {
  type = string
  default = "my-eks-cluster"
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
variable "scaling_config" {
  type = map(number)
  default = {
    desired_size = 2
    min_size     = 2
    max_size     = 3
  }
}