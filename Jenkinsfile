node{
  def app

    stage('Clone') {
        checkout scm
    }
    stage('Build image') {
        app = docker.build("shurt/nginx")
    }
    agent {
        docker {
            image 'shurt:shurt'
            args '-p 80:80'
        }
    }
     stages {
        stage('Run image') {
            steps {
                sh 'curl localhost'
            }
        }
    }
}
