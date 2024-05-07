env=$1
action=$2

if [ -z "$env" ]; then
    echo "Input missing env(Uat|dev|stage|prod)"
    exit 1
fi


if [ -z "$action" ]; then
    echo "Input missing action(apply | destory)"
    exit 1
fi

rm -rf .terraform/terraform.tfstate
terraform init -backend-config=$env-env/state.tfvars
terraform $action -var-file=$env-env/main.tfvars -auto-approve


