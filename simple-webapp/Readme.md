## This folder containg three files : 
1) main.py           -> simple python code for webpage 
2) requirements.txt  -> contains all require pakages to run the web application successfully on the container 
3) Dockerfile        -> Dockerfile is the main file used to build the image 


## Web application description : 

Mainly the web application hosting two pages depending on the path :

1) / , the application will repond with *Hello, World!*.

2) /version , the application will respond with *this the main version page :D*.

Please notice that the application is running on port 80 , if you would like to change that you have to go the the CMD line in the Dockerfile and change the port. 


## Steps to build the image and push on dockerhub: 

1) Move to the directory where the Dockerfile exist then run the following command :

```
$ docker build -t ahmedtahalhosari/sample-webapp:1.1 .
```

2) Push the image to my dockerhub repo using the following command :

```
$ docker push ahmedtahalhosari/sample-webapp:1.1
```