# kubeCtl Cheatsheet

## Basic commands

kubectl -n [namespace] [command]

* delete deployment
* get pods --watch
* logs [podname]

## Azure Kubernetes Service (AKS)

Install [Azure Cli](https://docs.microsoft.com/en-us/cli/azure/install-azure-cli-windows?view=azure-cli-latest)
  
  # Install kubeCtl 
  az aks install-cli
  
  # Connecting local kubectl to AKS  
  az aks get-credentials --resource-group [resource-group] --name [resource-name]
  
