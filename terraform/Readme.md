#This is a breif description for the terraform code: 

##The code containing two main modules :

1) Public-private-vpc

The main objective of that module is to create 2 private subent and 2 public subnets all of them located at the same vpc but on differnet AZ just to keep our application HA.

2) esc

the main objective of that module to create ecs which is running a specfic task in our case we are running simple web application the module give you multiple options and I will list some of them : 
    > image_name : pass the image name used to the run the conatiner 
    > container_name : the assigned name for the created contianers
    > prefiex       : the assigned name for AWS resource related to the ecs 
    > desigred capacity : number of containers started hosted the task , please notice that may the number increase/decrease depending on the load as the autoscaling is enable by default in that module.
    > enable_DP_LB : enable deletion protection option for the LB.
    > listener_port , tg_port , container_port , host_port , connection_protocol : you can control the used ports on host , container annd LB using these variables , all of them set to 80 tcp by default.
    > healthcheck : set command to check the healthly of the running containers in case the cotainer is not respond will be terminated ans start a new one.


there are two another important file :

1) providers 

    which you can provide aws credintials and the region where you want to deploy that Infrastructure.

2) route53 

the main objectiove from that file is to reserve domain (simplewebapp.com) or subdomin (dev.simplewebapp.com) then link between the LB dns name and the reserved domain , so when you enter the domain name on your browser that will direct you to the hosted application directly. 

