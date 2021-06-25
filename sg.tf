module "sg" {
  source      = "../../modules/sg"
  name        = "epam-leodorov-vpc"
  environment = "learning"

  enable_security_group = true
  security_group_name   = "bastion-01-sg"
  security_group_vpc_id = module.vpc.vpc_id


  security_group_ingress = [
    {
      from_port = 22
      to_port   = 22
      protocol  = "tcp"

      cidr_blocks      = ["0.0.0.0/0"]
      ipv6_cidr_blocks = null
      prefix_list_ids  = null
      description      = "SSH to VPC"
      security_groups  = null
      self             = null
    }
  ]

  security_group_egress = [
    {
      from_port = 0
      to_port   = 0
      protocol  = "-1"

      cidr_blocks      = ["0.0.0.0/0"]
      ipv6_cidr_blocks = null
      prefix_list_ids  = null
      description      = "all from VPC"
      security_groups  = null
      self             = null
    }
  ]

  tags = tomap({
    "Environment"   = "learning",
    "stack" =  "dev-01"
    "Owner"     = "Andrei Leodorov",
    "Orchestration" = "Terraform"
  })
}

module "sg-private" {
  source      = "../../modules/sg"
  name        = "epam-leodorov-vpc"
  environment = "learning"

  enable_security_group = true
  security_group_name   = "private-sg"
  security_group_vpc_id = module.vpc.vpc_id


  security_group_ingress = [
    {
      from_port = 0
      to_port   = 0
      protocol  = "-1"

      cidr_blocks      = null
      ipv6_cidr_blocks = null
      prefix_list_ids  = null
      description      = "all from bastion"
      security_groups  = [module.sg.security_group_id]
      self             = null
    }
  ]

  security_group_egress = [
    {
      from_port = 0
      to_port   = 0
      protocol  = "-1"

      cidr_blocks      = ["0.0.0.0/0"]
      ipv6_cidr_blocks = null
      prefix_list_ids  = null
      description      = "all to out"
      security_groups  = null
      self             = null
    }
  ]

  tags = tomap({
    "Environment"   = "learning",
    "stack" =  "dev-01"
    "Owner"     = "Andrei Leodorov",
    "Orchestration" = "Terraform"
  })
}