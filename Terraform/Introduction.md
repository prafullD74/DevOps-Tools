# [Terraform](https://developer.hashicorp.com/terraform/intro)
The core Terraform workflow consists of three stages:
1. Write: You define resources, which may be across multiple cloud providers and services. For example, you might create a configuration to deploy an application on virtual machines in a Virtual Private Cloud (VPC) network with security groups and a load balancer.
2. Plan: Terraform creates an execution plan describing the infrastructure it will create, update, or destroy based on the existing infrastructure and your configuration.
3. Apply: On approval, Terraform performs the proposed operations in the correct order, respecting any resource dependencies. For example, if you update the properties of a VPC and change the number of virtual machines in that VPC, Terraform will recreate the VPC before scaling the virtual machines.
	
>Terraform configuration files are declarative, meaning that they describe the end state of your infrastructure.

## To deploy infrastructure with Terraform:
1. Scope - Identify the infrastructure for your project.
2. Author - Write the configuration for your infrastructure.
3. Initialize - Install the plugins Terraform needs to manage the infrastructure.
4. Plan - Preview the changes Terraform will make to match your configuration.
5. Apply - Make the planned changes.

- The Terraform language syntax is built around two key syntax constructs: arguments and blocks.
- The identifier before the equals sign is the argument name, and the expression after the equals sign is the argument's value.
- Resources are the most important element in the Terraform language. Each resource block describes one or more infrastructure objects, such as virtual networks, compute instances, or higher-level components such as DNS records.
