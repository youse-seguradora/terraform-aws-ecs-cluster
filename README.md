# AWS ECS Cluster Terraform module

This Terraform module creates an ECS cluster on AWS.

<!-- BEGINNING OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
## Providers

| Name | Version |
|------|---------|
| aws | ~> 2.58 |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:-----:|
| ecs\_capacity\_providers | List of short names of one or more capacity providers to associate with the cluster. Valid values also include FARGATE and FARGATE\_SPOT. | `list` | `[]` | no |
| ecs\_cluster\_name | The ECS Cluster Name | `any` | n/a | yes |
| ecs\_setting | Configuration block(s) with cluster settings. For example, this can be used to enable CloudWatch Container Insights for a cluster. | <pre>list(object({<br>    name  = string<br>    value = string<br>  }))</pre> | `[]` | no |
| tags | A map of tags to add to ECS Cluster | `map(string)` | `{}` | no |

## Outputs

| Name | Description |
|------|-------------|
| cluster\_id | ECS Cluster ID |
| cluster\_name | ECS Cluster Name |

<!-- END OF PRE-COMMIT-TERRAFORM DOCS HOOK -->

## Authors

Module managed by [Youse Seguradora](https://github.com/youse-seguradora).

## License

Apache 2 Licensed. See LICENSE for full details.