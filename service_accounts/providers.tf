provider "google" {
  credentials = file("mygcp-creds.json")
  project     = var.project_id
  region      = var.region
  zone        = var.zone
}