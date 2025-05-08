region              = "us-east-1"
ami_id              = "ami-0c7217cdde317cfec" # Ubuntu in us-east-1
instance_type       = "t2.micro"
key_name            = "ec2_login"
vpc_cidr            = "10.0.0.0/16"
public_subnet_cidrs = ["10.0.1.0/24", "10.0.2.0/24"]
