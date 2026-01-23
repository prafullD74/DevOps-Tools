# [AWS](https://registry.terraform.io/providers/hashicorp/aws/latest)
1. [AWS Provider](https://registry.terraform.io/providers/hashicorp/aws/latest/docs)
2. [Resource: aws_s3_bucket](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/s3_bucket)
## [Terraform AWS modules](https://registry.terraform.io/namespaces/terraform-aws-modules)
1. [Terraform module to create AWS S3 resources](https://registry.terraform.io/modules/terraform-aws-modules/s3-bucket/aws/latest)

### Terraform
1. **Scope**: Identify the infrastructure for your project
2. **Author**: Write configuration to define your infrastructure
3. **Initialize**: Install the required Terraform providers
4. **Plan**: Preview the changes Terraform will make
5. **Apply**: Make the changes to your infrastructure

### [Configure your AWS credentials](https://registry.terraform.io/providers/hashicorp/aws/latest/docs#environment-variables)
> To use your IAM credentials to authenticate the Terraform AWS provider, set the `AWS_ACCESS_KEY_I`D and `AWS_SECRET_ACCESS_KEY` environment variables.
```aws cli
export AWS_ACCESS_KEY_ID=
```
```aws cli
export AWS_SECRET_ACCESS_KEY=
```
### Details
- Terraform plugins called providers let Terraform interact with cloud platforms and other services via their application programming interfaces (APIs).
- `provider` block configures options that apply to all resources managed by your provider.
- Use `data` blocks to query your cloud provider for information about other resources. Data sources help keep your configuration dynamic and avoid hardcoded values that can become stale.
- `resource` block defines components of your infrastructure.
- `terraform fmt` command automatically reformats all configuration files
- Terraform downloaded the `aws` provider and installed it in a hidden `.terraform` subdirectory of your current working directory. Terraform also created a file named `.terraform.lock.hcl` which specifies the exact provider versions used with your workspace, ensuring consistency between runs.
`validate` command helps you identify errors in your configuration.
- Terraform creates an **execution plan** for the changes it will make. Review this plan to ensure that Terraform will make the changes you expect.
Use `terraform apply` to plan and apply your configuration; Terraform shows the execution plan and asks for confirmation before making changes.
- When you applied your configuration, Terraform wrote data about your infrastructure into a file called `terraform.tfstate`. Terraform stores data about your infrastructure in its state file, which it uses to manage resources over their lifecycle.
- When you use Terraform to plan and apply changes to your workspace's infrastructure, Terraform compares the last known state in your state file, your current configuration, and data returned by your providers to create its execution plan.
- Your state file can include sensitive information about your infrastructure, such as passwords or security keys. By default, Terraform creates your state file locally.
- List the resources and data sources in your state with the `terrafrom state list` command.
- Print out your workspace's entire state with `terraform show`.

## AWS resource limitaion
1. AWS does not support moving an existing EC2 instance to a new VPC

