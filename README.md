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







