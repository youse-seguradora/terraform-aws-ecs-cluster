module "ecs-cluster" {
  source = "../../"

  ecs_cluster_name = var.ecs_cluster_name
}
