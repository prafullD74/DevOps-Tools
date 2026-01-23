# [Terrafrom](https://developer.hashicorp.com/terraform)
- [Terraform](https://youtu.be/ZFLWA1kQ3ls) is an infrastructure as code tool that lets you build, change, and version infrastructure safely and efficiently.
- Infrastructure as Code (IaC) tools allow you to manage infrastructure with configuration files rather than through a graphical user interface.
- HashiCorp Terraform is an infrastructure as code tool that lets you define both cloud and on-prem resources in human-readable configuration files that you can version, reuse, and share. Terraform creates and manages resources on cloud platforms and other services through their application programming interfaces (APIs).
- Terraform's configuration language is declarative, meaning that it describes the desired end-state for your infrastructure, in contrast to procedural programming languages that require step-by-step instructions to perform tasks.
- The core Terraform workflow consists of three stages: Write, Plan & Apply.
  ![core Terraform workflow](https://web-unified-docs-hashicorp.vercel.app/api/assets/terraform/latest/img/docs/intro-terraform-workflow.png)
- [Plugin development](https://developer.hashicorp.com/terraform/plugin)Terraform is logically split into two main parts:
  1. **Terraform Core**: is the Terraform binary that communicates with plugins to manage infrastructure resources.
  2. **Terraform Plugins**: Plugins are executable binaries written in Go that communicate with Terraform Core over an RPC interface. Terraform currently supports one type of plugin called [providers](https://developer.hashicorp.com/terraform/language/providers).
- Terraform workflow
  1. **Initialize** prepares your workspace so Terraform can apply your configuration.
  2. **Plan** allows you to preview the changes Terraform will make before you apply them.
  3. **Apply** makes the changes defined by your plan to create, update, or destroy resources.
- To deploy infrastructure with Terraform:
  - **Scope**: Identify the infrastructure for your project.
  - **Author**: Write the configuration for your infrastructure.
  - **Initialize**: Install the plugins Terraform needs to manage the infrastructure.
  - **Plan**: Preview the changes Terraform will make to match your configuration.
  - **Apply**: Make the planned changes.
- Terraform keeps track of your real infrastructure in a state file, which acts as a source of truth for your environment. Terraform uses the state file to determine the changes to make to your infrastructure so that it will match your configuration.
- Terraform builds a resource graph to determine resource dependencies and creates or modifies non-dependent resources in parallel.
- Reusable configuration components called [`modules`](https://developer.hashicorp.com/terraform/language/modules) that define configurable collections of infrastructure, saving time and encouraging best practices.

## [Terraform's configuration language](https://developer.hashicorp.com/terraform/language)
1. Configuration files you write in Terraform language tell Terraform what plugins to install, what infrastructure to create, and what data to fetch.
2. The Terraform language syntax is built around two key syntax constructs: `arguments` and `blocks`. Contains `argument name` = `argument's value` and a `block` is a container for other content.
3. Terraform configurations use a limited set of `top-level blocks`- such as resources, variables, outputs, and data sources—which define most of Terraform’s functionality and are not nested inside other blocks.
4. [Write Terraform Configuration tutorials](https://developer.hashicorp.com/terraform/tutorials/configuration-language).
5. [`resource "<TYPE>" "<LABEL>"`](https://developer.hashicorp.com/terraform/language/block/resource#resource)
   - The [resource](https://developer.hashicorp.com/terraform/language/block/resource#resource) block defines a piece of infrastructure and specifies the settings for Terraform to create it with.
   -  `TYPE`: Specifies the type of resource to create.
   -  `LABEL`: Specifies a name for the resource. Terraform uses this label to track the resource in your state file.
6. [`provider`](https://developer.hashicorp.com/terraform/language/meta-arguments/provider) is a meta-argument. Meta-arguments are built into the Terraform language and control how Terraform creates resources.
7. The [`provisioner`](https://developer.hashicorp.com/terraform/language/block/resource#provisioner) block defines actions to perform on the local machine or created resource, such as preparing servers or other infrastructure objects for service.
8. The [`terraform {}`](https://developer.hashicorp.com/terraform/tutorials/aws-get-started/aws-create#the-terraform-block) block configures Terraform itself, including which providers to install, and which version of Terraform to use to provision your infrastructure.
   - The `required_providers` block lets you set version constraints on the providers your configuration uses.
   - `source` argument specifies a hostname (optional), namespace, and provider name. provider's source is `hashicorp/aws` or `registry.terraform.io/hashicorp/aws`
   - `version` argument sets a version constraint for your (AWS) provider.
9. Variables
    - Input variables let you parametrize the behavior of your Terraform configuration.
    -  variables set a default value for Terraform to use if you do not specify a value for them.
10. Output values allow you to access attributes from your Terraform configuration and consume their values with other automation tools or workflows.
11. Terraform prints out your output values when you run a plan or apply, and also stores them in your workspace's state file. Review your output values using the `terraform output` command.

## [Terraform CLI](https://developer.hashicorp.com/terraform/cli)
1. Main commands:

| Commands | Purpose |
|---|---|
| [`init`](https://developer.hashicorp.com/terraform/cli/commands/init) | Prepare your working directory for other commands |
| [`validate`](https://developer.hashicorp.com/terraform/cli/commands/validate) | Check whether the configuration is valid |
| [`plan`](https://developer.hashicorp.com/terraform/cli/commands/plan)  | Show changes required by the current configuration |
| [`apply`](https://developer.hashicorp.com/terraform/cli/commands/apply) | Create or update infrastructure |
| [`destroy`](https://developer.hashicorp.com/terraform/cli/commands/destroy) | Destroy previously-created infrastructure |
  
2. All other commands:
   
| Commands | Purpose |
|---|---|
| [console](https://developer.hashicorp.com/terraform/cli/commands/console) | Try Terraform expressions at an interactive command prompt |
| [fmt](https://developer.hashicorp.com/terraform/cli/commands/fmt) | Reformat your configuration in the standard style |
| force-unlock | Release a stuck lock on the current workspace |
| [get](https://developer.hashicorp.com/terraform/cli/commands/get) | Install or upgrade remote Terraform modules |
| [graph](https://developer.hashicorp.com/terraform/cli/commands/graph) | Generate a Graphviz graph of the steps in an operation |
| [import](https://developer.hashicorp.com/terraform/cli/import/usage) | Associate existing infrastructure with a Terraform resource |
| [login](https://developer.hashicorp.com/terraform/cli/commands/login) | Obtain and save credentials for a remote host |
| [logout](https://developer.hashicorp.com/terraform/cli/commands/logout) | Remove locally-stored credentials for a remote host |
| metadata | Metadata related commands |
| modules | Show all declared modules in a working directory |
| [output](https://developer.hashicorp.com/terraform/cli/commands/output) | Show output values from your root module |
| providers | Show the providers required for this configuration |
| refresh | Update the state to match remote systems |
| [show](https://developer.hashicorp.com/terraform/cli/commands/show)  | Show the current state or a saved plan |
| [state](https://developer.hashicorp.com/terraform/language/state) | Advanced state management [`terraform state list`](https://developer.hashicorp.com/terraform/cli/commands/state/list) [`terraform state show`](https://developer.hashicorp.com/terraform/cli/commands/state/show) |
| taint | Mark a resource instance as not fully functional |
| untaint | Remove the 'tainted' state from a resource instance |
| version | Show the current Terraform version |
| workspace | Workspace management |
| -chdir=DIR | Switch to a different working directory before executing the given subcommand |

3. The `chdir` option instructs Terraform to change its working directory to the given directory before running the given subcommand.
4. The Terraform CLI commands interact with the HashiCorp service [Checkpoint](https://checkpoint.hashicorp.com/) to check for the availability of new versions and for critical security bulletins about the current version.
5. [`.terraform`](https://developer.hashicorp.com/terraform/cli/init#working-directory-contents) is a hidden directory automatically created by Terraform during `terraform init` to store cached provider plugins, modules, workspace info, and backend state metadata.
6. When using the default local backend, Terraform stores state in `terraform.tfstate` for a single workspace, or in the `terraform.tfstate.d` directory when multiple workspaces are used.
7.  `init` command is idempotent, and will have no effect if no changes are required. When you initialize a Terraform workspace, Terraform configures the backend, installs all providers and modules referred to in your configuration, and creates a version lock file if one doesn't already exist.[Initialize Terraform Configuration tutorial](https://developer.hashicorp.com/terraform/tutorials/cli/init?utm_source=WEBSITE&utm_medium=WEB_IO&utm_offer=ARTICLE_PAGE&utm_content=DOCS).


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
