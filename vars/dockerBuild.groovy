def call() {
  script{
                    withDockerRegistry(credentialsId: 'Docker'){
                        sh"docker build -t smrutisw2001/gamutkart:123 ."
                        sh"docker push smrutisw2001/gamutkart:123"
                    }
                }
}
