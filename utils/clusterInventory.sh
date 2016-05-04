# Script Name: generate_ansible_aws_inventory.sh
# Purpose: Create an ansible host yaml file for AWS hosts for Tag Server-type 
# Prerequisites: AWS cli commands should be working prior to executing this script
mkdir -p ./tmp ./yaml

cluster=$1

_AddAll()
{
echo [${cluster}] > ./tmp/cluster.tmp
#APP_TYPE=`aws ec2 describe-instances --filters "Name=tag:cluster_name,Values=${cluster}" --query "Reservations[*].Instances[*][Tags[?Key=='Name'].Value]"  --output text`
APP_TYPE=`aws ec2 describe-instances --filters "Name=tag:owner,Values=ralph.haro@orionhealth.com" --query "Reservations[*].Instances[*][Tags[?Key=='Name'].Value]"  --output text`
for inst in ${APP_TYPE}
do
echo " [${inst}]" >./tmp/${inst}.tmp
SERVERSLIST=`aws ec2 describe-instances --filters "Name=tag:Name,Values=${inst}" --query 'Reservations[].Instances[].[PublicDnsName]'  --output text`
for ipaddress in ${SERVERSLIST}
do
PUBLICIP=`aws ec2 describe-instances --filters "Name=tag:Name,Values=${inst}" --query 'Reservations[].Instances[].[PublicIpAddress]'  --output text`
PRIVATEIP=`aws ec2 describe-instances --filters "Name=tag:Name,Values=${inst}" --query 'Reservations[].Instances[].[PrivateIpAddress]'  --output text`
PUBLICDNS=`aws ec2 describe-instances --filters "Name=tag:Name,Values=${inst}" --query 'Reservations[].Instances[].[PublicDnsName]'  --output text`
NODETAG=`aws ec2 describe-instances --filters "Name=tag:Name,Values=${inst}" --query "Reservations[].Instances[].[Tags[?Key=='node_type'].Value]"  --output text`
INSTANCEID=`aws ec2 describe-instances --filters "Name=tag:Name,Values=${inst}" --query 'Reservations[].Instances[].[InstanceId]'  --output text`
echo "  "${ipaddress} ansible_ssh_user=ec2-user privateIp="${PRIVATEIP}" publicIp="${PUBLICIP}" node_type="${NODETAG}" instanceId="$INSTANCEID" instName="${inst}" publicDns="${PUBLICDNS}">>./tmp/cluster.tmp
done

done
}

_AddAll

mv ./tmp/cluster.tmp clusterhosts

