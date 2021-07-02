# 02 VPC, EC2

VPC with private and public subnets.
Nat gateway associated with the private subnet.
EC2 in the public subnet as Bastion host and host in the private network.

## Used resources

terraform modules from https://github.com/SebastianUA/terraform.git

Great thanks to Vitaliy Natarov!

## AWS CREDENTIALS

```
aws configure
```

## Terrfaorm

```
terraform init
terrafrom plan
terraform apply -target module.vpc #that is needed to get id of subnets and use it in ec2 playbook
terrafrom apply
terraform destroy
```