# kubeCtl Cheatsheet

## Highlights

    kubectl -n [namespace] port-forward [pod name] [local port]:[container port]

## Basic commands
        
    kubectl config current-context                      # Shows the current context for kubectl
    kubectl config use-context docker-for-desktop       # Sets kubectl to work on the local cluster
    
    kubectl -n [namespace] [command]
    

* delete deployment
* get pods --watch
* logs [podname]

## Deployment
    # Restart an existing service deployment
     kubectl -n [namespace] rollout restart deploy/[deployment name]

## Azure Kubernetes Service (AKS)

Install [Azure Cli](https://docs.microsoft.com/en-us/cli/azure/install-azure-cli-windows?view=azure-cli-latest)

    # Install kubeCtl 
    az aks install-cli    
    # Connecting local kubectl to AKS  
    az aks get-credentials --resource-group [resource-group] --name [resource-name]
