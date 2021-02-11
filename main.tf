resource "aws_ecs_cluster" "this" {
  count              = var.create_ecs ? 1 : 0
  name               = var.ecs_cluster_name
  capacity_providers = var.ecs_capacity_providers

  dynamic "setting" {

    for_each = var.ecs_setting
    content {
      name  = setting.value.name
      value = setting.value.value
    }
  }

  tags = var.tags
}
