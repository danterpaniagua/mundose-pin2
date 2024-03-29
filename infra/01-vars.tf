variable "cluster_name" {
  description = "Nombre para el cluster de ecs"
  default     = "mundose-pin2-cluster"
}

variable "sso_region" {
  description = "Console sign-in link"
  default     = "us-east-1"
}

variable "aws_secret_access_key" {
  description = "AWS Access key"
  default     = ""
}

variable "aws_access_key_id" {
  description = "AWS Access key id"
  default     = ""
}