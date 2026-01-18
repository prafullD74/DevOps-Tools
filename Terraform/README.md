# [Terrafrom](https://developer.hashicorp.com/terraform)
- Terraform is an infrastructure as code tool that lets you build, change, and version infrastructure safely and efficiently.
- Terraform language is declarative.

## [Terraform's configuration language](https://developer.hashicorp.com/terraform/language)
1. Configuration files you write in Terraform language tell Terraform what plugins to install, what infrastructure to create, and what data to fetch. 
2. [Write Terraform Configuration tutorials](https://developer.hashicorp.com/terraform/tutorials/configuration-language).
3. [`resource "<TYPE>" "<LABEL>"`](https://developer.hashicorp.com/terraform/language/block/resource#resource)
   - The [resource](https://developer.hashicorp.com/terraform/language/block/resource#resource) block defines a piece of infrastructure and specifies the settings for Terraform to create it with.
   -  `TYPE`: Specifies the type of resource to create.
   -  `LABEL`: Specifies a name for the resource. Terraform uses this label to track the resource in your state file.
4. [`provider`](https://developer.hashicorp.com/terraform/language/meta-arguments/provider) is a meta-argument. Meta-arguments are built into the Terraform language and control how Terraform creates resources.
5. The [`provisioner`](https://developer.hashicorp.com/terraform/language/block/resource#provisioner) block defines actions to perform on the local machine or created resource, such as preparing servers or other infrastructure objects for service.

## [Terraform CLI](https://developer.hashicorp.com/terraform/cli)
1. Main commands:

| Commands | Purpose |
|---|---|
| [`init`]() | Prepare your working directory for other commands |
| [`validate`]() | Check whether the configuration is valid |
| [`plan`]()  | Show changes required by the current configuration |
| [`apply`]() | Create or update infrastructure |
| [`destroy`]() | Destroy previously-created infrastructure |
  
2. All other commands:
   
| Commands | Purpose |
|---|---|
| console | Try Terraform expressions at an interactive command prompt |
| fmt | Reformat your configuration in the standard style |
| force-unlock | Release a stuck lock on the current workspace |
| get | Install or upgrade remote Terraform modules |
| graph | Generate a Graphviz graph of the steps in an operation |
| import | Associate existing infrastructure with a Terraform resource |
| login | Obtain and save credentials for a remote host |
| logout | Remove locally-stored credentials for a remote host |
| metadata | Metadata related commands |
| modules | Show all declared modules in a working directory |
| output | Show output values from your root module |
| providers | Show the providers required for this configuration |
| refresh | Update the state to match remote systems |
| show  | Show the current state or a saved plan |
| state | Advanced state management |
| taint | Mark a resource instance as not fully functional |
| untaint | Remove the 'tainted' state from a resource instance |
| version | Show the current Terraform version |
| workspace | Workspace management |

---

## What SOLID Means in Terraform

The SOLID principles come from object-oriented programming, but they can be adapted to **Infrastructure as Code (IaC)** with Terraform:

| Principle | Terraform Application | Example |
|-----------|-----------------------|---------|
| **S – Single Responsibility** | Each module should manage **only one resource type or concern**. | A VPC module handles only VPC creation, not subnets or route tables. |
| **O – Open/Closed** | Modules should be **open for extension but closed for modification**. | Add new features via variables or composition, not by editing core module code. |
| **L – Liskov Substitution** | Modules should be interchangeable if they serve the same purpose. | A “network” module could be swapped between AWS and GCP without breaking dependencies. |
| **I – Interface Segregation** | Avoid bloated modules with too many inputs. | Provide **focused variables** so users don’t need to configure irrelevant options. |
| **D – Dependency Inversion** | High-level modules shouldn’t depend on low-level details. | Use outputs and data sources to abstract dependencies, so modules consume interfaces rather than hard-coded resources. |

### Why It Matters
- **Clarity:** Easier to understand what each module does.  
- **Reusability:** Modules can be reused across projects and clouds.  
- **Maintainability:** Changes in one module don’t break unrelated infrastructure.  
- **Scalability:** Teams can extend infrastructure without rewriting core modules.

---
