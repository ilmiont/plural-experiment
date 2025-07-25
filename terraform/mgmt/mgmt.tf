variable "deletion_protection" {
    type    = bool
    default = true
}

module "mgmt" {
    source        = "./cluster"
    cluster_name  = "plural-exp"
    create_db     = false
    deletion_protection = "${var.deletion_protection}"
}

