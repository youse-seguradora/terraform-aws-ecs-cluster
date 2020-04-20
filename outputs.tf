output "cluster_id" {
  description = "ECS Cluster ID"
  value       = "${element(concat(aws_ecs_cluster.this.*.id, list("")), 0)}"
}

output "cluster_name" {
  description = "ECS Cluster Name"
  value       = "${element(concat(aws_ecs_cluster.this.*.name, list("")), 0)}"
}
