# oha_automation

Ansible playbooks for oha configuration management

clusterBuilder - Provision AWS cluster. Set cluster definitions in ec2_vars/clusterConfig.yml.  
  - ansible-playbook clusterBuilder.yml -i localhost

clusterTeardown - Terminate AWS cluster
  - ansible-playbook clusterTeardown.yml -i clusterhosts

provision-ec2 - provision single instance. Set instance definition in ec2_vars/crInstance.yml

terminate-ec2 - Terminate instance
  - ansible-playbook terminate-ec2.yml -i localhost --extra-vars=“instanceid={instanceId}"


Manage instances
Start Instance: play start_ec2.yml -i /etc/ansible/hosts -l NAME
Stop Instance: play stop_ec2.yml -i /etc/ansible/hosts -l NAME

Roles

S3 - Download artifacts from s3 bucket

Deploy - deploy scripts and configure env

Spark - deploy and configure spark cluster: 1 master, 2 workers  (configurable)

Elasticsearch - deploy and configure elasticsearch cluster: 1 master, 1 master-data, 1 data 


Ansible install instructions found on old Woki page
http://woki/display/Conc/Ansible+MSSP+Configuration+Management

