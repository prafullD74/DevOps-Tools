# [Multi-cloud provisioning]()
### 1. Terraform providers
1. [Azure Provider](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs)
2. [AWS Provider](https://registry.terraform.io/providers/hashicorp/aws/latest/docs)
3. [Google Cloud](https://registry.terraform.io/providers/hashicorp/google/latest/docs)
### 2. Authenticate Terraform
1. [Authenticate Terraform to Azure](https://learn.microsoft.com/en-us/azure/developer/terraform/authenticate-to-azure?tabs=bash)
2. [AWS]()
   1. [Getting started with Terraform](https://docs.aws.amazon.com/prescriptive-guidance/latest/getting-started-terraform/introduction.html)
   2. [Security best practices](https://docs.aws.amazon.com/prescriptive-guidance/latest/terraform-aws-provider-best-practices/security.html)
   3. [Use dynamic credentials with the AWS provider](https://developer.hashicorp.com/terraform/cloud-docs/dynamic-provider-credentials/aws-configuration#configure-aws)
3. Application Default Credentials (ADC) is the recommended way to [authenticate to Google Cloud](https://docs.cloud.google.com/docs/terraform/authentication) when using Terraform.
### 3. Remote state storage option
1. [Store Terraform state in Azure Storage](https://learn.microsoft.com/en-us/azure/developer/terraform/store-state-in-azure-storage?tabs=azure-cli)
2. [Stores the state as a Blob with the given Key within the Blob Container](https://developer.hashicorp.com/terraform/language/backend/azurerm)
### 4. Terraform configuration
1. [Azure Storage Account](https://learn.microsoft.com/en-us/azure/storage/common/storage-account-create?tabs=terraform#create-a-storage-account)
   1. [azurerm_storage_account](https://registry.terraform.io/providers/hashicorp/azurerm/4.64.0/docs/resources/storage_account)
   2. [azurerm_storage_management_policy](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/storage_management_policy)
2. [AWS S3 Bucket]()
   1. [aws_s3_bucket](https://registry.terraform.io/providers/-/aws/latest/docs/resources/s3_bucket)
   2. [aws_s3_bucket_versioning](https://registry.terraform.io/providers/-/aws/latest/docs/resources/s3_bucket_versioning)
   3. [aws_s3_bucket_object_lock_configuration](https://registry.terraform.io/providers/-/aws/latest/docs/resources/s3_bucket_object_lock_configuration)
3. [GCP](https://docs.cloud.google.com/storage/docs/terraform-create-bucket-upload-object)
   1. [google_storage_bucket](https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/storage_bucket)
