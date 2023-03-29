pipeline {
    agent any

    stages {
        stage('tests') {
            steps {
                echo 'test should run here'
            }
        }
        stage('build') {
            steps {
                sh 'cd src && podman --cgroup-manager=cgroupfs build -t xropamneo-${BRANCH_NAME}:latest -t xropamneo-${BRANCH_NAME}:${BUILD_NUMBER} . && podman save --format=oci-archive -o xropamneo-${BRANCH_NAME}-${BUILD_NUMBER}.tar localhost/xropamneo-${BRANCH_NAME}:${BUILD_NUMBER}'
            }    
        }
        stage('deploy')
        {        
            steps{
                // ssh key exchange is needed between jenkins host and docker
                sh 'cd src && rsync -v xropamneo-${BRANCH_NAME}-${BUILD_NUMBER}.tar user@host.xyz:/home/user/xropamneo-${BRANCH_NAME}-${BUILD_NUMBER}.tar'
                sh "ssh user@host.xyz 'sudo k3s ctr images import /home/user/xropamneo-${BRANCH_NAME}-${BUILD_NUMBER}.tar'"
                sh "sed -i 's/<IMAGE>/xropamneo-${BRANCH_NAME}:${BUILD_NUMBER}/' kubernetes/xropamneo-${BRANCH_NAME}.yml"
                sh "sed -i 's/<BUILD_VERSION>/xropamneo-${BRANCH_NAME}:${BUILD_NUMBER}/' kubernetes/xropamneo-${BRANCH_NAME}.yml"
                sh "scp kubernetes/xropamneo-${BRANCH_NAME}.yml user@host.xyz:/home/user/"
                sh "ssh user@host.xyz 'sudo kubectl --kubeconfig /etc/rancher/k3s/k3s.yaml apply -f /home/user/xropamneo-${BRANCH_NAME}.yml'"
            }    
        }
    }
    post {
        always {
            sh 'podman rmi localhost/xropamneo-${BRANCH_NAME}:latest localhost/xropamneo-${BRANCH_NAME}:${BUILD_NUMBER}'
            sh 'rm -rf src/xropamneo-${BRANCH_NAME}-${BUILD_NUMBER}.tar'
            sh 'ssh user@host.xyz rm /home/user/xropamneo-${BRANCH_NAME}-${BUILD_NUMBER}.tar'
        }
    }
}
