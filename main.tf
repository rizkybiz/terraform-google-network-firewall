resource "google_compute_firewall" "new-firewall" {
  name    = "${var.network}-firewall-${var.name}"
  description = "${var.description}"
  network = "${var.network}"
  priority = "${var.priority}"

  allow {
    protocol = "${var.protocol}"
    ports    = "${var.ports}"
  }

  target_tags   = "${var.target_tags}"
  source_ranges = "${var.source_ranges}"
}
