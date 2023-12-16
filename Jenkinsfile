pipeline {
    agent any

    stages {
        stage('Run C Code') {
            steps {
                script {
                    def cFilesExist = sh(script: 'ls Questionnaire/*.c', returnStatus: true) == 0
                    if (cFilesExist) {
                        sh 'chmod +x run.sh'
                        sh './run.sh c'
                    } else {
                        echo "No C files found."
                    }
                }
            }
        }

        stage('Run C++ Code') {
            steps {
                script {
                    def cppFilesExist = sh(script: 'ls Questionnaire/*.cpp', returnStatus: true) == 0
                    if (cppFilesExist) {
                        sh 'chmod +x run.sh'
                        sh './run.sh cpp'
                    } else {
                        echo "No C++ files found."
                    }
                }
            }
        }

        stage('Run Python Scripts') {
            steps {
                script {
                    def pythonFilesExist = sh(script: 'ls Questionnaire/*.py', returnStatus: true) == 0
                    if (pythonFilesExist) {
                        sh 'chmod +x run.sh'
                        sh './run.sh python'
                    } else {
                        echo "No Python files found."
                    }
                }
            }
        }
    }
}
