provider "google" {
  project = "project_id"
  region = "ap-south-1"
  credentials = "/path"
}
resource "google_compute_instance" "os1" {
  name = "os1"
  machine_type = "e2-medium"
  zone = "ap-south-1"

  boot_disk {
    initialize_params {
      image = "debian-cloud/debian-9"
    }
  }
  network_interface {
    network = "defaut"
  }
  }
