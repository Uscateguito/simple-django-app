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
                // sh 'apt-get install -y pipx'
                sh '/opt/venv/bin/pip install --upgrade pip && /opt/venv/bin/pip install -r requirements.txt'
            }
        }
        stage('Ejecutar pylint (test)') {
            steps {
                echo "ejecutando pylint... comprobando errores"
                sh '/opt/venv/bin/python -m pylint ../simple-django-app || true'
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
