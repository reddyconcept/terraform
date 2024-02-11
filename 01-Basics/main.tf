provider "aws" {
    region = "ap-south-1" 
}

# Old representation
provider "google" {
}

# Resource block
resource "aws_instance" "tfnew" {
  ami="ami-083327d0fe6d65178"
  instance_type = "t2.micro"
}

#HCL - HashyCorp Languagec