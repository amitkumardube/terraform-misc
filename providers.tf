provider "google" {
    project = var.provider_config["project_id"]
    region = var.provider_config["region"]
    zone = var.provider_config["zone"]
    credentials = file("my-first-project-298218-7e25767dcc93.json")
}