# node:lts-alpine global module install location: /usr/local/lib/node_modules/
const sonarQubeExecutable = require('/usr/local/lib/node_modules/sonarqube-scanner/dist/sonarqube-scanner-executable').getSonarQubeScannerExecutable;

# download the sonar-scanner binary
sonarQubeExecutable( () => {});
