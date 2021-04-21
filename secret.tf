/*resource "google_secret_manager_secret" "secret-basic" {
  secret_id = "secret-test"

  labels = {
    label = "my-label"
  }

  replication {
    user_managed {
    replicas {
        location = "us-east1"
      }
    }
  }
}
*/