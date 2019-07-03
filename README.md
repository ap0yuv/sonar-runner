# sonar-runner

A Docker Container based on node-alpine.

The Image installs glibc from sgrerrand (needed for npm Version of sonarqube-runner in alpine)

Afterwards the npm Package `sonarqube-scanner` is installed and the Script install_scanner.js is executed.

`install_scanner.js` calls the Method `getSonarQubeScannerExecutable` from `sonarqube-scanner` which downloads the sonar-scanner binary so it is already availabe after the image is build. 
