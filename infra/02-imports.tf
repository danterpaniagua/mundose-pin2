data "aws_caller_identity" "current" {}

data "aws_region" "current" {}

#data "aws_iam_role" "allow_all" {
#  name = "allow_all"
#}

data "aws_iam_policy" "allow_all" {
    name = "allow_all"
}

data "aws_ami" "ubuntu-2204-amd64-server" {
    #VM mas reciente de ubuntu-jammy-22.04
    most_recent = true

    filter {
      name = "virtualization-type"
      values = ["hvm"]
    }
    filter {
      name = "name"
      values = ["ubuntu/images/hvm-ssd/ubuntu-jammy-22.04-amd64-server-*"] //"Description": "Canonical, Ubuntu, 22.04 LTS, amd64 jammy image build on 2023-12-07"
    }
}