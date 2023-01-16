pipeline {
  agent {
    kubernetes {
      yaml '''
        apiVersion: v1
        kind: Pod
        spec:
          containers:
          - name: docker
            image: docker:dind
            command:
            - cat
            tty: true
            volumeMounts:
             - mountPath: /var/run/docker.sock
               name: docker-sock

          volumes:
          - name: docker-sock
            hostPath:
              path: /var/run/docker.sock    
        '''
    }
  }
  stages{
    stage("Checkout"){
      steps{
        git url: 'https://github.com/shailendra153/demo', branch: 'master'
      }
    }
    stage("Build Docker Image"){
      steps{
        container('docker'){
          sh "docker build -t shailendra153/mydemoimage:${env.BUILD_ID} ."
        }
      }
    }
    stage("Docker login"){
      steps{
        container('docker'){
          sh 'docker login -u shailendra153 -p Shailendra-Tout123'
        }
      }
    }
    stage("Push Docker Image into Docker hub"){
      steps{
        container('docker'){
          sh "docker push shailendra153/mydemoimage:${env.BUILD_ID}"
        }
      }
    }
  }
  post{
    always{
      container('docker'){
        sh 'docker logout'
      }
    }
  }
}