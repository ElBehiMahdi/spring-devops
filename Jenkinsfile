pipeline {
    agent any
    tools { 
      maven 'MAVEN_HOME' 
      jdk 'JAVA_HOME' 
    }
    stages {
        stage('Test mvn') {
            steps {
            	sh """ mvn -DskipTests clean package """ 
                sh """ mvn install """;
                sh """ mvn test """;
            }
        }       
    }
    post {
        always {  
             echo 'This will always run'  
         }    
    }
}