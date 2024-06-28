provider "aws" {
region = "ap-south-1"
access_key = "AKIATCKAO6GHQOWFEOP3"
secret_key = "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"
}

resource "aws_instance" "key" {
ami = "ami-012b9156f755804f5"
instance_type = "t2.micro"
key_name = "nwkpp"
count = 1
vpc_security_group_ids = [aws_security_group.demo-sg.id]
tags = {
Name = "project-instance"
Environment = "dev"
}
}
