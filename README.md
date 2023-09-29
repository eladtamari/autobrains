# autobrains home task

## Synopsys:
Web app that contains one view (Welcome page)
The app deployed to AWS EC2 instance and available here: http://13.39.83.222:8081/

## CI/CD
to build, test and deploy the app Jenkins server is up and running here: [http://13.39.83.222:8080/job/deploy/](http://13.39.83.222:8080/job/deploy/)

**Jenkins credntials will be sent by mail**

in order to trigger the CI rerun the job

### job stages:
1. clone/pull from github
2. build the docker image
3. run the app in a test container
4. run tests
5. remove test container
6. run app in docker container
7. post deploy tests

   planning
   ![autobrains-planing-diagram](https://github.com/eladtamari/autobrains/assets/44618706/3854d166-23a6-4e57-b96c-57b519de5121)


## Technologies
**Web app** -
```
I used Python + flask + NGNIX, instead writing in from scratch, 
i have used Flask Container: tiangolo/uwsgi-nginx-flask:python3.8-alpine 
the image already contain the NGINX reverse proxy server, 
Flask web server, 
python and a basic web app structure.
the reason i used it is savind time dealing with all the app aspects.
```

**CI/CD** - I used Jenkins cause it is a common tool that has all the plugins and can easly deployd on Cloud instase

**Testing** - I used pytest for my python app, a common tool.

**Code repository** - GitHub 

**computing** - i choosed minimal instance that should run this minimal containers, seems that the choice wasn't ideal, the machine hang a lot, i would consider another type.
the instance is in europe which give a good performance
I created a security group that give access to the ports: 80/443/8080/8081/22
I have created an IAM user to be able to be integrated with Jenkins and other services in programmatic mode.


