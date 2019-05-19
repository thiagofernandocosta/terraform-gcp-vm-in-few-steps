resource "google_compute_instance" "default" {
  name         = "my-first-vm-from-scratch"
  machine_type = "f1-micro"
  zone         = "us-central1-a"

  tags = ["environment", "testing"]

  boot_disk {
    initialize_params {
      image = "debian-cloud/debian-9"
    }
  }

  network_interface {
    network = "default"

    access_config {
      // Ephemeral IP
    }
  }

  metadata {
        startup-script = <<SCRIPT
        apt-get -y update
        apt-get -y install nginx
        export HOSTNAME=$(hostname | tr -d '\n')
        export PRIVATE_IP=$(curl -sf -H 'Metadata-Flavor:Google' http://metadata/computeMetadata/v1/instance/network-interfaces/0/ip | tr -d '\n')
        echo "Welcome to $HOSTNAME - $PRIVATE_IP" > /usr/share/nginx/www/index.html
        service nginx start
        SCRIPT
    } 

  service_account {
    scopes = ["userinfo-email", "compute-ro", "storage-ro"]
  }
}