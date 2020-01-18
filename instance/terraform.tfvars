aws_region          = "us-west-2"
accessip            = ["0.0.0.0/0"]
key_name            = "stage-key"
key_path            = "~/.ssh/id_rsa.pub"

instance_count      = 1
instance_type       = "t2.micro"
subnet_id           = "subnet-a33d13f9"
security_group_ids  = ["sg-01cfb9db5b4abdf39"]