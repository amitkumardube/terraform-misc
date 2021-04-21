resource "null_resource" "gcloud" {
  provisioner "local-exec" {
      command = <<EOH
      curl https://sdk.cloud.google.com > install.sh
      bash install.sh --disable-prompts
      gcloud auth activate-service-account --key-file=./my-first-project-298218-7e25767dcc93.json
    EOH
  }
}