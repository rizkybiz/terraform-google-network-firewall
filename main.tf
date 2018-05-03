resource "google_compute_firewall" "new-firewall" {
  name    = "${var.name}"
  description = "${var.description}"
  network = "${var.network}"
  priority = "${var.priority}"

  allow {
    protocol = "${var.protocol}"
    ports    = "${var.ports}"
  }

  source_ranges = "${var.source_ranges}"
}
