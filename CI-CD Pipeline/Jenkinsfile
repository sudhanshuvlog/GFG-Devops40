pipeline {
    agent { label 'ec2worker1' }

    stages { //collection of jobs
        stage('Clone the Github Repo') { //stage == job
            steps { // what it will perform
               git 'https://github.com/sudhanshuvlog/SampleFlaskApp-Devops40.git'
            }
        }
        stage('Install pip3'){ //job2
        steps{
            sh 'yum install python3-pip -y'
        }
        }
        stage ('Install Requirements'){ //job3
        steps{
            sh 'pip3 install -r requirements.txt'
        }
        }
        stage ('Execute Test cases & flake8 test'){ //job4
        steps{
            sh 'pytest'
            sh 'flake8 .'
        }
        }
        stage ('Build docker image'){ //job5
        steps{
            sh 'docker build -t mywebimg:latest .'
        }
        }
        stage ('Run the docker container'){ //job6
        steps{  
            sh 'docker rm -f webos'
            sh 'docker run -dit --name webos -p 80:80 mywebimg'
        }
        }
        
    }
}
