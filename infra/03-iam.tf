resource "aws_iam_role" "mundose-ec2-admin" {
    name = "mundose-ec2-admin"
    assume_role_policy = jsonencode({
                "Version": "2012-10-17",
                "Statement": [
                {
                    "Effect": "Allow",
                    "Principal": {
                        "Service": "ec2.amazonaws.com"
                    },
                    "Action": "sts:AssumeRole"
                },
            ]
        }
    )
}

resource "aws_iam_role_policy_attachment" "mundose-ec2-admin" {
    role = aws_iam_role.mundose-ec2-admin.name
    policy_arn = data.aws_iam_policy.allow_all.arn
}

resource "aws_iam_instance_profile" "ec2_profile" {
    name = "mundose-eks-profile"
    role = aws_iam_role.mundose-ec2-admin.name
}