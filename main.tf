provider "aws" {
access_key = "xxx"
secret_key = "yyy"

region = "us-east-1"
}

resource "aws_vpc" "MYVPC" {
  cidr_block       = "10.0.0.0/16"
  instance_tenancy = "default"

  tags = {
    Name = "MYVPC"
}
  }

resource "aws_internet_gateway" "MYVPC-igw" {
vpc_id = "${aws_vpc.MYVPC.id}"
tags = {
Name = "MYVPC-IGW"
}

  }

resource "aws_eip" "eip"{

vpc = true
}




