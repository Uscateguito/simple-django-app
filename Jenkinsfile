pipeline {
    agent any
    stages {
        // stage('Clonar el repositorio (build)') {
        //     steps {
        //         echo "clonando repositorio..."
        //         git 'https://github.com/Uscateguito/simple-django-app.git'
        //     }
        // }
        stage('Instalar dependencias (build)') {
            steps {
                echo "instalando dependencias..."
                sh 'apt-get install -y pipx'
                sh 'pipx install -r requirements.txt'
            }
        }
        stage('Ejecutar pylint (test)') {
            steps {
                echo "ejecutando pylint... comprobando errores"
                sh 'pylint **/*.py'
            }
        }
        stage('Desplegar con docker compose (deploy)') {
            steps {
                echo "construyendo imagen de Docker..."
                sh 'docker build -t simple-django-app .'
            }
        }
    }
}
