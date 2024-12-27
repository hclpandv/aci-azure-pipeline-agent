export ACR=vikiregistry01.azurecr.io
export VER=1.0.0
export IMAGE=ubuntu-terraform-azp-agent:$VER
az acr build --image ${ACR}/${IMAGE} --registry $ACR .