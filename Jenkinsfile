pipeline {
    agent any

    stages {

        stage('Clone Git Repository') {
            steps{
                   sh 'echo "Hi Sumit, Cloning git project here"'
                //    git 'https://github.com/Sumit15200/JenkinsProjectLambda'
                  }
        }

         stage('Building Image') {
             when {
                     changeset "app/**/*"
             }
            steps {
                    script {
                                 sh 'echo "Hi Sumit, Bulding the docker Image here"'
                                 dockerImage = docker.build("${Calculator}:${lite}", "-f Dockerfile .")
                             }
             }
         }


        // stage('Push to ECR') {
        //     when {
        //              changeset "app/**/*"
        //     }
        //     steps{
        //             script {
        //                     sh "aws ecr-public get-login-password --region us-east-1 | docker login --username AWS --password-stdin public.ecr.aws/i5q1u8f8"
        //                     sh "docker tag ${IMAGE_REPO_NAME}:${IMAGE_TAG} ${REPOSITORY_URI}:$IMAGE_TAG"
        //                     sh "docker push ${AWS_ACCOUNT_ID}.dkr.ecr.${AWS_DEFAULT_REGION}.amazonaws.com/${IMAGE_REPO_NAME}:${IMAGE_TAG}"
        //             }
        //     }
        // }

        // stage('Update Lambda Function Image') {
        //     when {
        //             changeset "app/**/*"
        //     }
        //     steps {
        //             script {
        //                     sh "aws lambda update-function-code --region ${AWS_DEFAULT_REGION} --function-name ${LAMBDA_FUNCTION_NAME} --image-uri ${AWS_ACCOUNT_ID}.dkr.ecr.${AWS_DEFAULT_REGION}.amazonaws.com/${IMAGE_REPO_NAME}:${IMAGE_TAG}"
        //             }
        //     }
        // }

        // stage('Test Lambda Function') {
        //     steps {
        //                  // Add your testing commands here
        //     }
        // }
        
        // stage('Configure Monitoring and Logging') {
        //     steps {
        //             // Add commands to set up monitoring and logging
        //     }
        // }


    }
}
