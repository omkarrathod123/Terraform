resource "aws_eks_node_group" "eks_node_group" {
  cluster_name    = aws_eks_cluster.eks_cluster.name
  node_group_name = "eks-node-group"
  node_role_arn   = aws_iam_role.eks_node_role.arn
  subnet_ids      = [aws_subnet.publicSUB.id,aws_subnet.privateSUB.id,aws_subnet.publicSUB1.id,aws_subnet.privateSUB1.id]

  scaling_config {
    desired_size = 2
    min_size     = 2
    max_size     = 3
  }

  instance_types = ["t3.medium"]
  ami_type       = "AL2_x86_64"  # Amazon Linux 2

  depends_on = [
    aws_iam_role_policy_attachment.eks_worker_node_policy,
    aws_iam_role_policy_attachment.eks_cni_policy,
    aws_iam_role_policy_attachment.eks_ecr_policy,
    aws_eks_cluster.eks_cluster
  ]
}