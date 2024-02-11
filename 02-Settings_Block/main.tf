# Terraform block or Terraform Settings block
terraform {
  required_version = "~> 1.6.6" # Allows only rightmost version component to increment

  # Required Providers
  required_providers {
    aws = { # local provider name (anyname can give)
      source = "hashicorp/aws" # https://registry.terraform.io/hasicorp/aws # source address
      version = "~> 5.36.0" # version constraint
    }
  }
}

# Provider Settings block
provider "aws" {
  # Extra details of provider (aws, google, azure)
  region = "ap-south-1"  # Mumbai
  access_key = "*****" 
  secret_key = "*****" # Never ever commit your access_key and secret_key in any SCM(github)
}

# Resource Settings block
resource "aws_vpc" "k8s_vpc" {  # Create a AWS VPC
  cidr_block = "172.31.0.0/16"
  tags = { "Name" = "k8s_vpc" }
  
}