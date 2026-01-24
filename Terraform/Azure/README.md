# [Azure]()

### Advantages
1. Using Terraform has several advantages over manually managing your infrastructure:
   - Terraform can manage infrastructure on multiple cloud platforms.
   - The human-readable configuration language helps you write infrastructure code quickly.
   - Terraform's state allows you to track resource changes throughout your deployments.
   - You can commit your configurations to version control to safely collaborate on infrastructure.

### Package Manager
[Chocolatey](https://chocolatey.org/) is a free and open-source package management system for Windows. If you have Chocolatey installed, use it to install Terraform from your command line.
```bash
choco install terraform
```
### [Install the Azure CLI](https://learn.microsoft.com/en-us/cli/azure/install-azure-cli-windows?view=azure-cli-latest&pivots=msi#microsoft-installer-msi)
> [Enable tab completion in PowerShell](https://learn.microsoft.com/en-us/cli/azure/install-azure-cli-windows?view=azure-cli-latest&pivots=msi#microsoft-installer-msi)
```powershell
az upgrade
```
### Authenticate
```powershell
az login
az account set --subscription "my-subscription-id"
```
- A [Service Principal](https://learn.microsoft.com/en-us/cli/azure/azure-cli-sp-tutorial-1?view=azure-cli-latest&tabs=powershell#create-a-service-principal-with-role-and-scope) is an application within Azure Active Directory with the authentication tokens Terraform needs to perform actions on your behalf.
```powershell
az ad sp create-for-rbac --role="Contributor" --scopes="/subscriptions/<SUBSCRIPTION_ID>"
```

#### version control systems (VCSs)

