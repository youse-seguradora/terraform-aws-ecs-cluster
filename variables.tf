variable "ecs_cluster_name" {
  description = "The ECS Cluster Name"
}

variable "ecs_capacity_providers" {
  description = "List of short names of one or more capacity providers to associate with the cluster. Valid values also include FARGATE and FARGATE_SPOT."
  default     = []
}

variable "ecs_setting" {
  type = list(object({
    name  = string
    value = string
  }))
  description = "Configuration block(s) with cluster settings. For example, this can be used to enable CloudWatch Container Insights for a cluster."
  default     = []
}

variable "tags" {
  description = "A map of tags to add to ECS Cluster"
  type        = map(string)
  default     = {}
}
