pipeline {
  agent {
    node {
      label 'macOS'
    }

  }
  stages {
    stage('Build') {
      steps {
	withEnv(overrides: ["PATH+XCPRETTY=/usr/local/bin"]) {
          sh '''
	    xcodebuild clean -project GenericNetworkLayer.xcodeproj -scheme GenericNetworkLayer -destination "platform=iOS Simulator,name=iPhone X,OS=11.4" CODE_SIGN_IDENTITY="" CODE_SIGNING_REQUIRED=NO ONLY_ACTIVE_ARCH=NO -quiet | xcpretty --test --color
          '''
        }
      }
    }
  }
}
