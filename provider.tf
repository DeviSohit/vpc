terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "5.15.0"
    }
  }
  backend "s3" {
    bucket = "roboshop-remotestate-practice"
    key    = "vpc-demo" #state file name.you can give any name
    region = "us-east-1"
    dynamodb_table = "roboshop-remotestate-locking"
  }
}

provider "aws" {
  # Configuration options
  # you can give access key and secret key but secuiry problem
  region = "us-east-1"
}