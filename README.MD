# Below commands were executed manually

export KMS_PROJECT_ID="<project_id>"

gcloud kms keyrings create "secret-manager-cmek" \
    --project "${KMS_PROJECT_ID}" \
    --location "us-east1"
   
gcloud kms keys create "my-cmek-key" \
    --project "${KMS_PROJECT_ID}" \
    --location "us-east1" \
    --keyring "secret-manager-cmek" \
    --purpose "encryption"
