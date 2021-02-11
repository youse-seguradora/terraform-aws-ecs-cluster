variable "aws_region" {}

variable "ecs_cluster_name" {
  description = "The ECS Cluster Name"
}

variable "create_ecs" {
  description = "Create a ECS Cluster?"
  type        = bool
  default     = false
}
