# [Terrafrom](https://developer.hashicorp.com/terraform)


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

---
