def call(){
  withDockerRegistry(credentialsId: 'Docker'){
                    sh"docker build -t smrutisw2001/gamutkart:${Build_Number}"
                    sh"docker push smrutisw2001/gamutkart:${Build_Number}"
}
