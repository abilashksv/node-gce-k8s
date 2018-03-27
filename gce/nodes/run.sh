main()
{
execute_terraform
}
execute_terraform()
{
terraform init
terraform apply
terraform output bastion_ip
}

main $*
