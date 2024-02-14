output "account_id" {
  value = data.aws_caller_identity.current.account_id
}

output "caller_arn" {
  value = data.aws_caller_identity.current.arn
}

output "user_id" {
  value = data.aws_caller_identity.current.user_id
}

output "public_key" {
  value = aws_key_pair.devkey.public_key
}

output "ssh_connection-mundose-pin2" {
  value = "ssh ubuntu@${aws_instance.mundose-pin2.public_dns}"
}

output "http_connection-mundose-pin2" {
  value = "http://${aws_instance.mundose-pin2.public_dns}"
}

output "sso_start_url" {
  value = "https://${data.aws_caller_identity.current.account_id}.signin.aws.amazon.com/console?region=${data.aws_region.current.name}"
}

output "ubunutu-ami" {
  value = data.aws_ami.ubuntu-2204-amd64-server
}