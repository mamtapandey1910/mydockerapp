pipeline {
  agent any 
    stages {
      stage ('checkout'){
        steps {
          git branch: 'main', url: 'https://github.com/mamtapandey1910/mydockerapp.git'
        }
      }
      stage ('build'){
        steps {
          sh '/usr/local/bin/docker build -t myfirstimage:latest .'
        }
      }
      stage ('image security scan'){
        steps {
           sh 'echo "Hello image"'
        }
      }
      stage ('deploy'){
        steps {
           sh '/usr/local/bin/docker run -itd -p 8000:8000 myfirstimage --entrypoint /bin/bash /myapp/python manage.py runserver'
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
