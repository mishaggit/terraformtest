resource "google_compute_network" "vpc_network" {
  name = var.network
  project_id   = var.project_id
  auto_create_subnetworks = false
}

resource "google_compute_subnetwork" "network-with-private-secondary-ip-ranges" {
  name          = var.subnetwork
  ip_cidr_range = "10.10.0.0/16"
  region        = var.region
  network       = google_compute_network.vpc_networkt.id
  secondary_ip_range {
    range_name    = var.ip_range_pods_name
    ip_cidr_range = "10.20.0.0/16"
  }
}
