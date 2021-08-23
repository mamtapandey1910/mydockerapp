pipeline {
  environment {
    PATH = "$PATH:/usr/local/bin/"
  }
  agent any 
    stages {
      stage ('checkout'){
        steps {
          git branch: 'main', url: 'https://github.com/mamtapandey1910/mydockerapp.git'
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
           sh '/usr/local/bin/docker run -itd -p 8000:8000 myfirstimage'
        }
      }
      stage ('validate'){
        steps {
          sh 'curl http://127.0.0.1:8080/note/'
        }
      }
      stage ('post'){
        steps {
           sh 'echo "Hello post"'
        }
      }
    }
  }
