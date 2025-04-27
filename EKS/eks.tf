resource "aws_eks_cluster" "nginx-Cluster" {
  name = "Nginx-Cluster"

  access_config {
    authentication_mode = "API"
  }

  role_arn = var.cluster_role_arn
  version  = var.eksversion

  bootstrap_self_managed_addons = false

  compute_config {
    enabled       = true
    node_pools    = ["general-purpose"]
    node_role_arn = var.node_role_arn
  }

  kubernetes_network_config {
    elastic_load_balancing {
      enabled = true
    }
  }

  storage_config {
    block_storage {
      enabled = true
    }
  }

  vpc_config {
    endpoint_private_access = true
    endpoint_public_access  = true

    subnet_ids = [
      "subnet-0098cd6a11d9d9d56",
      "subnet-0aa2fe8a1c27a5e65",
      "subnet-04ebafb44c2a9c881"
    ]
  }
  tags = {
    Name = "nginx-Cluster"
    Env = "Lab"
  }
}