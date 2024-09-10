
# update deployment share
update-MDTDeploymentShare -path "DS001:" -Verbose

# Install WDS
Install-WindowsFeature –Name WDS -IncludeManagementTools

# Initialize server
wdsutil /initialize-server /remInst:"C:\DeploymentShare"

# Respond to all the clients
wdsutil /Set-Server /AnswerClients:All

# start the server
wdsutil /start-Server

#Import Boot image file
Import-WdsBootImage -Path "C:\DeploymentShare\Boot\LiteTouchPE_x64.wim"

