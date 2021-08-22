pipeline {
  agent any 
    stages {
      stage ('checkout scm'){
        steps {
          git branch: 'master', url: 'https://github.com/mamtapandey1910/mydockerapp.git'
        }
      }
      stage ('build'){
        steps {
          sh 'docker build -t myfirstimage:latest .'
        }
      }
      stage ('image security scan'){
        steps {
           sh 'echo "Hello image"'
        }
      }
      stage ('deploy'){
        steps {
           sh 'echo "Hello deploy"'
        }
      }
      stage ('validate'){
        steps {
          sh 'echo "Hello validate"'
        }
      }
      stage ('post'){
        steps {
           sh 'echo "Hello post"'
        }
      }
    }
  }
