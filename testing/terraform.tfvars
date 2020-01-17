aws_region          = "us-west-2"
accessip            = ["0.0.0.0/0"]
key_name            = "stage-key"
key_path            = "~/.ssh/id_rsa.pub"

instance_count      = 1
instance_type       = "t2.micro"
subnet_id           = "subnet-07205b2f"
security_group_ids  = ["sg-01cfb9db5b4abdf39"]