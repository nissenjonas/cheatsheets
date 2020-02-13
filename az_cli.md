# Azure Cli Cheatsheet

## Managing Subscriptions

    az account list -o table          # List existing accounts available from the machine
    az login                          # Login to a subscription

## Devops Extension
    az extension add --name azure-devops
    az devops configure --defaults organization=https://tfs.schultz.dk/tfs/SchultzCollection/Schultz.Fasit
    az devops invoke --area build --resource builds --route-parameters project="Schultz.Fasit" -o json
