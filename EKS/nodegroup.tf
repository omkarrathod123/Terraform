resource "aws_eks_node_group" "example" {
  cluster_name    = aws_eks_cluster.nginx-Cluster.name
  node_group_name = "test"
  node_role_arn   = var.node_role_arn
  subnet_ids      = [
      "subnet-0098cd6a11d9d9d56",
      "subnet-0aa2fe8a1c27a5e65",
      "subnet-04ebafb44c2a9c881"
    ]

  scaling_config {
    desired_size = 3
    max_size     = 10
    min_size     = 1
  }

  update_config {
    max_unavailable = 1
  }
}