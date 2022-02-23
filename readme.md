# Simple AKS Deployment with Terraform

## Prerequisites
- Azure DevOps (build is configured to use DevOps Pipelines)
    - Service principal details stored in Key Vault attached to Pipeline as variable group
    - `notify-user` secret is a username that should review and approve the Terraform deployment
- Existing Azure Storage Account for Terraform backend
- EncryptionAtHost feature enabled on Azure subscription: `az feature register --namespace Microsoft.Compute --name EncryptionAtHost`