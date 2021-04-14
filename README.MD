# Below commands were executed manually

export KMS_PROJECT_ID="<project_id>"

gcloud beta services identity create \
    --service "secretmanager.googleapis.com" \
    --project "${KMS_PROJECT_ID}"
    
output : service-808601317670@gcp-sa-secretmanager.iam.gserviceaccount.com

gcloud kms keyrings create "secret-manager-cmek" \
    --project "${KMS_PROJECT_ID}" \
    --location "us-east1"
   
gcloud kms keys create "my-cmek-key" \
    --project "${KMS_PROJECT_ID}" \
    --location "us-east1" \
    --keyring "secret-manager-cmek" \
    --purpose "encryption"

gcloud kms keys add-iam-policy-binding "my-cmek-key" \
    --project "${KMS_PROJECT_ID}" \
    --location "us-east1" \
    --keyring "secret-manager-cmek" \
    --member "serviceAccount:service-808601317670@gcp-sa-secretmanager.iam.gserviceaccount.com" \
    --role "roles/cloudkms.cryptoKeyEncrypterDecrypter"
    
gcloud secrets replication update secret-test \
    --set-kms-key="projects/${KMS_PROJECT_ID}/locations/us-east1/keyRings/secret-manager-cmek/cryptoKeys/my-cmek-key" \
    --location=us-east1 \
    --project "${KMS_PROJECT_ID}"
