terraform{

   required_providers {  // can have multiple providers
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"    // 
    }

  }
required_version = ">=1.2.0"
}

# Configure the AWS Provider , By default it takes us-east-1
provider "aws" {
  region  = "us-east-1"
}




# Create a VPC
resource "aws_instance" "example_server" {
  ami           = "ami-053b0d53c279acc90"
  instance_type = "t2.micro"


  tags = {
    Name = "First_Terraform_EC2"
  }

}







