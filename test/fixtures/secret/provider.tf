provider "google" {
    project = "my-first-project-298218"
    region = "us-central"
    zone = "us-central1-a"
    credentials = file("../../../my-first-project-298218-7e25767dcc93.json")
}
