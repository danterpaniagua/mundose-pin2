resource "aws_key_pair" "devkey" {
  key_name   = "aws_key"
  #public_key = file("~/.ssh/id_rsa.pub")
  public_key = file("./devkey.pub")
}

resource "local_file" "devkey" {
  content         = aws_key_pair.devkey.public_key
  filename        = "./devkey.pub"
  file_permission = "0600"
}