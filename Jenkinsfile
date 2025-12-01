pipeline { 
 agent any 
 environment { 
 IMAGE_NAME = "python-print-app:latest" 
 } 
 stages { 
 stage('Checkout') { 
 steps { 
 // Récupérer le code depuis Git (ou local) 
 git branch: 'main', url: 'https://github.com/meriemsa90-rgb/mon-projet-jenkins.git' 
 } 
 } 
 stage('Build Docker Image') { 
 steps { 
 script {
docker.build("${IMAGE_NAME}") 
 } 
 } 
 } 
 stage('Run Container') { 
 steps { 
 script { 
 // Supprimer l'ancien conteneur si nécessaire 
 sh 'docker rm -f python-print-app || true' 
 // Lancer le conteneur 
 sh 'docker run --name python-print-app ${IMAGE_NAME}' 
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
