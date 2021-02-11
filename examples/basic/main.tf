module "ecs-cluster" {
  source = "../../"

  create_ecs       = true
  ecs_cluster_name = var.ecs_cluster_name
}
