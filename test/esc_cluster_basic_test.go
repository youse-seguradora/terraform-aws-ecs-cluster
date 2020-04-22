package test

import (
	"fmt"
	"strings"
	"testing"

	"github.com/gruntwork-io/terratest/modules/random"
	"github.com/gruntwork-io/terratest/modules/terraform"
	"github.com/stretchr/testify/assert"
)

func TestIAMAccount(t *testing.T) {
	t.Parallel()

	// Expected value
	expectedName := fmt.Sprintf("ecs-%s", strings.ToLower(random.UniqueId()))
	awsRegion := "us-east-1"

	terraformOptions := &terraform.Options{
		TerraformDir: "../examples/basic",
		Upgrade:      true,

		// Variables to pass to our Terraform code using -var options
		Vars: map[string]interface{}{
			"ecs_cluster_name": expectedName,
			"aws_region":       awsRegion,
		},

		// Environment variables to set when running Terraform
		EnvVars: map[string]string{
			"AWS_DEFAULT_REGION": awsRegion,
		},
	}

	// At the end of the test, run `terraform destroy` to clean up any resources that were created
	defer terraform.Destroy(t, terraformOptions)

	// This will run `terraform init` and `terraform apply` and fail the test if there are any errors
	terraform.InitAndApply(t, terraformOptions)

	thisECSClusterNames := terraform.Output(t, terraformOptions, "this_ecs_cluster_name")
	assert.Equal(t, expectedName, thisECSClusterNames)

}
