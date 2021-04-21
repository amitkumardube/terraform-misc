resource "null_resource" "gcloud" {
  provisioner "local-exec" {
      command = <<EOH
      curl -O https://sdk.cloud.google.com > install.sh
      ./install.sh --disable-prompts
    EOH
  }
}