pipeline {
  agent {
    node {
      label 'WarpBookPro'
    }

  }
  stages {
    stage('Update Carthage') {
      steps {
        withEnv(overrides: ["PATH+CARTHAGE=/usr/local/bin"]) {
          sh '''
	    carthage bootstrap --verbose --platform iOS --cache-builds
	  '''
        }

      }
    }
    stage('Build') {
      steps {
        sh '''
	   xcodebuild clean test -project GenericNetworkLayer.xcodeproj -scheme GenericNetworkLayer -destination "platform=iOS Simulator,name=iPhone X,OS=11.4" CODE_SIGN_IDENTITY="" CODE_SIGNING_REQUIRED=NO ONLY_ACTIVE_ARCH=NO -quiet
	'''
      }
    }
  }
}
