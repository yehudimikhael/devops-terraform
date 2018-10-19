provider "aws" {
    region = "${var.region}"
    access_key = "${var.aws_access_key}"
    secret_key = "${var.aws_secret_key}"
}

resource "aws_vpc" "rallyVPC" {
    cidr_block = "175.15.0.0/22"
    enable_dns_hostnames = true
    tags {
        Name = "VPC Rally"
    }
}