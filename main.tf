resource "google_compute_firewall" "egress_sql_rule" {
  project  = var.project_id
  name     = "${var.env}-${var.product_base_name}-sql-allow"
  network  = var.network
  priority = "100"
  allow {
    protocol = "tcp"
    ports    = [var.sql_port]
  }
  destination_ranges = [var.sql_instance_ip]
  direction          = "EGRESS"
  description        = "Allow egress to sql instace"
}

resource "google_compute_firewall" "ingress_dataproc_rule" {
  project  = var.project_id
  name     = "${var.env}-${var.product_base_name}-internal"
  network  = var.network
  priority = "100"
  allow {
    protocol = "all"
  }
  direction     = "INGRESS"
  source_ranges = [var.dataproc_range]
  description   = "Allow internal ingress traffic"
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
