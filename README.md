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