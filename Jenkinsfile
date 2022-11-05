pipeline {
    agent any
    tools { 
      maven 'MAVEN_HOME' 
      jdk 'JAVA_HOME' 
    }
    stages {
        stage('Checkout GIT') {
            steps {
                echo 'Pulling ...' ;
                git branch: 'main',
                    url : 'https://github.com/ElBehiMahdi/spring-devops.git',
                    credentialsId : '307a3184-b702-486c-bdca-a208080ae8f3'
            }
        }
        stage('Test mvn') {
            steps {
                sh """ mvn clean """;
                sh """ mvn install """;
                sh """ mvn test """;
            }
        }
        stage('Mvn SonarQube') {
            steps {
		jacoco(execPattern: 'target/jacoco.exec')
            	sh """ mvn sonar:sonar -Dsonar.login=7bd0ae6e97798de973a631cca7fd9b4643f8b8ec"""    
            }
        }
        
    }
    post {
        always {  
             echo 'This will always run'  
         }    
    }
}