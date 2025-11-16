locals { env = "prod" }


module "network" {
source = "../../modules/network"
env = local.env


vpc_cidr = var.vpc_cidr
azs = var.azs
public_subnet_cidrs = var.public_subnet_cidrs
private_subnet_cidrs = var.private_subnet_cidrs
}


module "eks" {
source = "../../modules/eks"
env = local.env


cluster_name = var.cluster_name
vpc_id = module.network.vpc_id
public_subnet_ids = module.network.public_subnet_ids
private_subnet_ids = module.network.private_subnet_ids


node_group_desired_capacity = var.node_group_desired_capacity
}
