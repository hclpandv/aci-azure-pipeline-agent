# aci-azure-pipeline-agent
Azure pipeline agents hosted as Azure Container Instances

# references:

[ACI YAML reference](https://learn.microsoft.com/en-us/azure/container-instances/container-instances-reference-yaml)  
https://medium.com/israeli-tech-radar/running-azure-pipeline-agent-in-a-container-instance-6ee7238c69b2  


## Fixe issue: Failed to delete a subnet used by Azure Container Instances due to delegation

```bash
RESOURCE_GROUP="my_network_rg"
VNET="myvnet"
SUBNET="mysubnet"

SAL_ID=$(az network vnet subnet show --resource-group $RESOURCE_GROUP--vnet-name $VNET --name $SUBNET --query id --output tsv)/providers/Microsoft.ContainerInstance/serviceAssociationLinks/default
az resource delete --ids $SAL_ID --api-version 2023-05-01 --verbose
```
