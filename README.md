# Terraform on AWS

This repository contains Terraform configuration files for deploying infrastructure on AWS.

## Prerequisites

- [Terraform](https://learn.hashicorp.com/tutorials/terraform/install-cli) (v0.12+)
- [AWS CLI](https://docs.aws.amazon.com/cli/latest/userguide/install-cliv2.html) (configured with your credentials)

## Installation

1. **Clone the repository:**

    ```bash
    git clone https://github.com/octaviom/aws-terraform.git
    cd aws-terraform
    ```

2. **Initialize Terraform:**

    ```bash
    terraform init
    ```

## Usage

1. **Preview the changes:**

    ```bash
    terraform plan
    ```

2. **Apply the configuration:**

    ```bash
    terraform apply
    ```
