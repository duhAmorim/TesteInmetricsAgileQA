pipeline {
    agent {
        docker {
            image "ruby"
        }
    }
    
    stages {
        stage('Build'){
            steps{
                echo 'Bilding resolve Dependencies'
                sh 'bundler install'
                sh 'bundler'
            }   
        }
        stage('Test'){
            steps {
                echo 'running testes regreção'
            }
            }
        stage('UAT'){
            steps{
                echo 'tipo uat'
                input (message: 'Podemos subir para prod?', ok: 'Yes')
            }
            } 
        stage('Prod'){
            steps{
             echo 'Prod atualizado'   
            }
            }   
        
    }
}