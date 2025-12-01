pipeline { 
    agent any 
    
    environment { 
        IMAGE_NAME = "python-print-app:latest" 
    } 
    
    stages { 
        stage('Checkout') { 
            steps { 
                // Utiliser le bon dépôt Git
                git 'https://github.com/meriemss90-rgb/non-projet-jenkins.git'
            } 
        } 
        
        stage('Build Docker Image') { 
            steps { 
                script {
                    // Construire l'image Docker
                    docker.build("${IMAGE_NAME}") 
                } 
            } 
        } 
        
        stage('Run Container') { 
            steps { 
                script { 
                    // Supprimer l'ancien conteneur si nécessaire
                    sh 'docker rm -f python-print-app 2>/dev/null || true' 
                    // Lancer le conteneur
                    sh "docker run --name python-print-app ${IMAGE_NAME}" 
                } 
            } 
        } 
    } 
    
    post { 
        success { 
            echo 'Pipeline terminé avec succès !' 
        } 
        failure { 
            echo 'Pipeline échoué.' 
        } 
    } 
}
