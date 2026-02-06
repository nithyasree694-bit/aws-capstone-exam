pipeline {
  agent any

  environment {
    // ===== INLINE VARIABLES (edit easily) =====
    APP_REPO_URL   = 'https://github.com/nithyasree694/aws-capstone-exam.git' // CHANGE_ME
    ANSIBLE_DIR    = 'ansible'
    INVENTORY_FILE = 'hosts.ini'
    V1_PATH        = 'app/v1'
    V2_PATH        = 'app/v2'
    // ==========================================
  }

  triggers {
    githubPush()   // Webhook will trigger on pushes to this repo
  }

  stages {
    stage('Checkout') {
      steps {
        git url: "${env.APP_REPO_URL}", branch: 'main'
      }
    }

    stage('Prep & Verify Ansible') {
      steps {
        sh '''
          cd ${ANSIBLE_DIR}
          ansible --version
          echo "Inventory:"
          cat ${INVENTORY_FILE}
        '''
      }
    }

    stage('Deploy v1') {
      steps {
        sh '''
          cd ${ANSIBLE_DIR}
          ansible-playbook -i ${INVENTORY_FILE} site.yaml -e app_version_path=${V1_PATH}
        '''
      }
    }

    stage('Verify (manual)') {
      steps {
        echo "Open the ALB DNS from Terraform outputs to verify v1."
      }
    }
  }

  post {
    success { echo 'Pipeline completed successfully.' }
    failure { echo 'Pipeline failed.' }
  }
}
