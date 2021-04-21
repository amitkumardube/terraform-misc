resource "null_resource" "gcloud" {
  provisioner "local-exec" {
      command = <<EOH
      curl https://sdk.cloud.google.com > install.sh
      bash install.sh --disable-prompts
      gcloud auth activate-service-account --key-file=./my-first-project-298218-7e25767dcc93.json
      gcloud secrets replication update secret-test --set-kms-key=projects/my-first-project-298218/locations/us-east1/keyRings/secret-manager-cmek/cryptoKeys/man-cmek-key --location=us-east1 --project my-first-project-298218
    EOH
  }
}