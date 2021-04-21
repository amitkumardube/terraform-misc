module "gcloud" {
  source  = "terraform-google-modules/gcloud/google"
  version = "2.0.3"
  create_cmd_body = "secrets replication update secret-test --set-kms-key=projects/my-first-project-298218/locations/us-east1/keyRings/secret-manager-cmek/cryptoKeys/my-cmek-key --location=us-east1 --project my-first-project-298218"
  service_account_key_file = "./my-first-project-298218-7e25767dcc93.json"
}
