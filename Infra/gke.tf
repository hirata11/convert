# GKE cluster
resource "google_container_cluster" "primary" {
  name     = "${var.project_id}-gke"
  location = var.region
  resource_labels = var.tags  
  network    = google_compute_network.vpc.name
  subnetwork = google_compute_subnetwork.subnet.name
  enable_autopilot = true
}

resource "google_container_registry" "registry" {
}
