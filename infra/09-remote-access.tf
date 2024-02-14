resource "tls_private_key" "pk" {
  algorithm = "RSA"
  rsa_bits  = 4096
}

resource "aws_key_pair" "kp" {
  key_name   = "myKey"       # Create "myKey" to AWS!!
  public_key = tls_private_key.pk.public_key_openssh

  provisioner "local-exec" { # Create "myKey.pem" to your computer!!
    command = "echo '${tls_private_key.pk.private_key_pem}' > ./myKey.pem"
  }
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