# GCP Virtual machine in few steps

Deploy Virtual machine on Google Cloud Plataform (GCP) and set up initial content with nginx via terraform.

This project requires:
- [Terraform](https://www.terraform.io/ "Terraform")
- [Google Account](https://cloud.google.com/ "Google Account")

![Terraform and Google Cloud Plataform](https://cdn-images-1.medium.com/max/1600/1*b5s-MJeJMdDgq4sqnuMfBg.png?raw=true)

## Installation and Usage
See [**Installation and Usage**](USAGE.md) for instructions on getting up and running.
Visit [USAGE.md](USAGE.md "Installation & Usage").

## How It Works
* **Google Cloud Plataform**
    * Google Cloud Platform (GCP), offered by Google, is a suite of cloud computing services that runs on the same infrastructure that Google uses internally for its end-user products. 
    * Alongside a set of management tools, it provides a series of modular cloud services including computing, data storage, data analytics and machine learning. Registration requires a credit card or bank account details.
    * Google Cloud Platform provides infrastructure as a service, platform as a service, and serverless computing environments.

* **Terraform**
    * Terraform is a tool for building, changing, and versioning infrastructure safely and efficiently. Terraform can manage existing and popular service providers as well as custom in-house solutions.
    * Configuration files describe to Terraform the components needed to run a single application or your entire datacenter. Terraform generates an execution plan describing what it will do to reach the desired state, and then executes it to build the described infrastructure. As the configuration changes, Terraform is able to determine what changed and create incremental execution plans which can be applied.
    * The infrastructure Terraform can manage includes low-level components such as compute instances, storage, and networking, as well as high-level components such as DNS entries, SaaS features, etc.