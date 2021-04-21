data "google_service_account" "myaccount" {
  account_id = "terraform@my-first-project-298218.iam.gserviceaccount.com"
}

resource "google_service_account_key" "mykey" {
  service_account_id = data.google_service_account.myaccount.name
}
