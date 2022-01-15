# This is a brief description for the terraform code:


## Modules

1) Public-private-vpc

     The main objective of that module is to create 2 private subnets and 2 public subnets all of them located at the same VPC but on different AZ just to keep our application HA.

2) esc

   The main objective of that module is to create ECS which is running a specific task in our case we are running a simple web application the module give you multiple options and I will list some of them : 

    * image_name: pass the image name used to run the container 
    * container_name: the assigned name for the created containers
    * prefix: the assigned name for AWS resource related to the ECS 
    * designed_capacity: number of containers started hosted the task, please notice that may the number increase/decrease depending on the load as the autoscaling is enabled by default in that module.
    * enable_DP_LB: enable deletion protection option for the LB.
    * listener_port, tg_port, container_port, host_port, connection_protocol: you can control the used ports on the host, container, and LB using these variables, all of them set to 80 TCP by default.
    * healthcheck : set command to check the health of the running containers in case the container is not responding will be terminated and start a new one.

## Files

There are two other important files :

1) providers 

    Which you can provide AWS credentials and the region where you want to deploy that Infrastructure.

2) route53 

   The main objective from that file is to reserve domain (simplewebapp.com) or subdomain (dev.simplewebapp.com) then link between the LB DNS name and the reserved domain, so when you enter the domain name on your browser that will direct you to the hosted application directly. 


## Apply infrastructure code

1) Initiate terraform using the following command :

```python
$ terraform init 
```

2) Optionally you can run a plan command to check the changes before applying it :

```python
$ terraform plan
```

3) Finally apply the changes using :

```python
$ terraform apply
```



## Suggested improvements

* Use multiple domains and multiple environments (test, dev, pre-prod , prod ) to test and develop before going live 
* Use tags in the created resources to distinguish the resources 
* Create CI/CD pipeline to auto-deploy/apply the infrastructure on the cloud provider 
* Increase the security of the domain by setting some rules to block unwanted or suspected connection
* Use remote state files so the infrastructure team can work together.
