resource "google_compute_instance" "os1" {
  name = "os1"
  machine_type = var.mtype
  zone = "ap-south-1"
  count = var.istest ? 1 : 0

  boot_disk {
    initialize_params {
      image = "debian-cloud/debian-9"
    }
  }
  network_interface {
    network = "defaut"
  }
}
