variable "eks_cluster_name" {
  type = string
  default = "lab-cluster"
}
variable "node_group_name" {
  type = string
  default = "lab-group-name"
}
variable "instance_types" {
  type = string
  default = "t3.medium"
}