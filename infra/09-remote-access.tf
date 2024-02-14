variable "key_name" {}

resource "tls_private_key" "example" {
  algorithm = "RSA"
  rsa_bits  = 4096
}

resource "aws_key_pair" "generated_key" {
  key_name   = var.key_name
  public_key = tls_private_key.example.public_key_openssh
}

#resource "aws_key_pair" "devkey" {
#  key_name   = "aws_key"
#  #public_key = file("~/.ssh/id_rsa.pub")
#  public_key = file("./devkey.pub")
#}

#resource "local_file" "devkey" {
#  content         = aws_key_pair.devkey.public_key
#  filename        = "./devkey.pub"
#  file_permission = "0600"
#}