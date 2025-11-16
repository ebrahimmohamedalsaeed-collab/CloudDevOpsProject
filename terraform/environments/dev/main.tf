terraform {
  # backend is configured at repo root (backend.tf) when running from root.
  # If you run terraform from env folder, you can copy backend settings or use -backend-config.
}

# call network module
module "network" {
  source = "../../modules/network"

  vpc_cidr             = var.vpc_cidr
  public_subnet_cidrs  = var.public_subnet_cidrs
  private_subnet_cidrs = var.private_subnet_cidrs
  tags = {
    Environment = "dev"
    Project     = "CloudDevOpsProject"
  }
}

# call eks module
module "eks" {
  source = "../../modules/eks"

  cluster_name                = var.cluster_name
  cluster_version             = var.cluster_version
  vpc_id                      = module.network.vpc_id
  public_subnet_ids           = module.network.public_subnets
  private_subnet_ids          = module.network.private_subnets
  node_group_instance_types   = var.node_group_instance_types
  node_group_desired_capacity = var.node_group_desired_capacity
  node_group_min_size         = var.node_group_min_size
  node_group_max_size         = var.node_group_max_size
  tags                        = merge(var.common_tags, { Environment = "dev" })
}

