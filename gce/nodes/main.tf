resource "google_compute_instance" "bastion" {
  name         = "bastion"
  machine_type = "g1-small"
  zone         = "us-east1-b"
  project      = "${var.gce_project_name}"

  tags = ["instance-type", "bastion", "http-server", "https-server"]

  boot_disk {
    initialize_params {
      image = "ubuntu-1604-xenial-v20180306"
    }
  }


  network_interface {
    network = "${var.gce_network_name}"
    access_config {
    }
  }

  metadata {
    instance-type = "bastion"
  }

//  metadata_startup_script = "${file("./deploy-k8s-cluster.sh")}"

  service_account {
    scopes = ["userinfo-email", "compute-rw", "storage-ro", "cloud-platform"]
  }
}

