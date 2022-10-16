## Terraform example code

### Content
- module
- directory structure
- variable, output 

### Usage
#### 1. Set access key and secret key
- main.tf

  ```
  provider "aws" {
  region = var.region
  access_key = "your key"
  secret_key = "your key"
  ```
- Environment variable
  ```
  $ export AWS_ACCESS_KEY_ID="your key"
  $ export AWS_SECRET_ACCESS_KEY="your key"
  ```

  ```
  provider "aws" {
    region = var.region
    # access_key = "your key" 
    # secret_key = "your key"
  }  
  ```
#### 2. Terraform CLI
```
$ cd prod
$ terraform init
$ terraform apply
$ terraform destroy
```
### Reference
- https://registry.terraform.io/providers/hashicorp/aws/latest/docs
- https://www.terraform.io/language/modules/develop
- https://github.com/antonbabenko/terraform-best-practices
