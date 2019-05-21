# Using GCP and Terraform

## Installation
1. Clone project locally
```bash
$ git clone https://github.com/stcox/gke-wordpress.git && cd gke-wordpress
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
The example site uses `mysite-com`, for the site's namespace, and `mysite.com` for the domain. **All WordPress site namespaces are automatically prefixed with `wp-`** to make them easier to find; consequently, the example namespace will appear as **`wp-mysite-com`** in k8s.

The example domain name is, `mysite.com` must be substituted with your own domain.

Kube-lego provides free LetsEncrypt SSL certificates for any domains you control. LetsEncrypt is enabled by default, but can be disabled in the sites `values.yaml` file.

1. **Create an A record** for your domain, `mysite.com` at domain registrar (Godaddy, et al.), and point it to your Ingress IP address. [Get your cluster's Ingress IP Address](https://console.cloud.google.com/kubernetes/discovery).