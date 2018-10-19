resource "aws_route_table" "route-public" {
    vpc_id = "${aws_vpc.rallyVPC.id}"
    tags {
        Name = "Route Public"
    }
    route { 
        cidr_block = "0.0.0.0/0"
        gateway_id = "${aws_internet_gateway.rally-gw.id}"

    }
}