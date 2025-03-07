resource "aws_eks_cluster" "example" {
  name = "example"

  access_config {
    authentication_mode = "API"
  }

  role_arn = "arn:aws:iam::491085402179:role/VP-Auto-Cluster"
  version  = var.eksversion

  bootstrap_self_managed_addons = false

  compute_config {
    enabled       = true
    node_pools    = ["general-purpose"]
    node_role_arn = "arn:aws:iam::491085402179:role/VP-Node"
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
}