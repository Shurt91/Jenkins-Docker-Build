node{
  def app

    stage('Clone') {
        checkout scm
    }
    stage('Build image') {
        app = docker.build("shurt/nginx")
    }
    stage('Run image') {
        docker.image('shurt/nginx').withRun('-p 80:80 --name nginx') { c ->
        sh 'docker ps'
        sh 'docker exec nginx curl localhost'
    }
    }
}
