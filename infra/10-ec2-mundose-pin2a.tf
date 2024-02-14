resource "aws_instance" "mundose-pin2" {
  #ami           = "${data.aws_ami.ubuntu-2204-amd64-server.image_id}"
  ami           = "ami-0c7217cdde317cfec"
  instance_type = "t2.micro"

  associate_public_ip_address = true
  vpc_security_group_ids      = [aws_security_group.main.id]
  iam_instance_profile        = aws_iam_instance_profile.ec2_profile.name
  key_name                    = aws_key_pair.kp.public_key.name

  tags = {
    Name = "ec2-mundose-pin2"
  }
  user_data = file("../scripts/mundose-pin2.sh")

  depends_on = [
    aws_key_pair.kp,
    aws_iam_role.mundose-ec2-admin,
    aws_security_group.main,
  ]
}