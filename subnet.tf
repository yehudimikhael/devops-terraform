data "aws_availability_zones" "available" {}

resource "aws_subnet" "rally-public" {
    vpc_id = "${aws_vpc.rallyVPC.id}"
    cidr_block = "175.15.0.0/24"
    availability_zone = "${data.aws_availability_zones.available.names[0]}"
    tags {
        Name = "Subnet Public Rally"
    }
}

resource "aws_subnet" "rally-private-1" {
    vpc_id = "${aws_vpc.rallyVPC.id}"
    cidr_block = "175.15.1.0/24"
    availability_zone = "${data.aws_availability_zones.available.names[0]}"
    tags { 
        Name = "Subnet Private Rally"
    }
}

resource "aws_subnet" "rally-private-2" {
    vpc_id = "${aws_vpc.rallyVPC.id}"
    cidr_block = "175.15.2.0/24"
    availability_zone ="${data.aws_availability_zones.available.names[1]}"
    tags {
        Name = "Subnet Private 2 Rally"
    }
}
