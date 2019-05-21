# Using GCP and Terraform

## Installation
1. Clone project locally
```bash
$ git clone https://github.com/thiagofernandocosta/gcp_vm-in-few-steps && cd gcp_vm-in-few-steps
```

2. Install **Terraform**

`Linux`
```bash
$ wget -q https://releases.hashicorp.com/terraform/0.11.6/terraform_0.11.6_linux_amd64.zip
$ unzip terraform_0.11.6_linux_amd64.zip
$ sudo mv terraform /usr/local/bin/terraform
$ terraform version
```
`Mac`
```bash
$ brew install terraform
$ terraform version
```

## Usage
### Running and getting up
After installing terraform and configuring google cloud account. We have to run application using `terraform`, let's go.

There are many arguments in terraform, but this case we just wanna run application for first steps.

1. **terraform commands**
  * `terraform init`
     This command sets up the environment.

  * `terraform plan`
     This command reports configuration will be applied.
  
  * `terraform apply -auto-approve`
     This command applies configuration defined on terraform files approving automatically changes.

  * `terraform destroy -auto-approve`
     Against of command above, this remove everything created.

**It's important to know, but not explained deeply in this tutorial that terraform maintains a state from your infrastructure.**