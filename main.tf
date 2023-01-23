resource "google_compute_firewall" "egress_allow_rule" {
  count    = length(var.allow_egress) == 0 ? 0 : 1
  project  = var.project_id
  name     = "${var.env}-${var.product_base_name}-sql-allow"
  network  = var.network
  priority = "100"
  allow {
    protocol = "tcp"
    ports    = [var.egress_port]
  }
  destination_ranges = var.allow_egress
  direction          = "EGRESS"
  description        = "Allow egress traffic"
}

resource "google_compute_firewall" "ingress_allow_rule" {
  count    = length(var.allow_ingress) == 0 ? 0 : 1
  project  = var.project_id
  name     = "${var.env}-${var.product_base_name}-internal"
  network  = var.network
  priority = "100"
  allow {
    protocol = "all"
  }
  direction     = "INGRESS"
  source_ranges = var.allow_ingress
  description   = "Allow ingress traffic"
}

resource "google_compute_firewall" "ingress_deny_rule" {
  project  = var.project_id
  name     = "${var.env}-${var.product_base_name}-ingress-deny"
  network  = var.network
  priority = "2000"
  deny {
    protocol = "all"
  }
  direction     = "INGRESS"
  source_ranges = []
  description   = "Deny ingress traffic from 0.0.0.0/0"
}
