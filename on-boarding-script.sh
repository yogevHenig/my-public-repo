
client_id = $(az ad sp show --id $1 --query id -o tsv)

az group create --name awp-scan-rg --location eastus

az role assignment create --assignee-principal-type ServicePrincipal  --assignee-object-id $client_id --role "Disk Snapshot Contributor" --resource-group awp-scan-rg

az role assignment create --assignee-principal-type ServicePrincipal  --assignee-object-id $client_id --role "Network Contributor" --resource-group awp-scan-rg

az role assignment create --assignee-principal-type ServicePrincipal  --assignee-object-id $client_id --role "Virtual Machine Contributor" --resource-group awp-scan-rg
