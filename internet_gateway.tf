resource "aws_internet_gateway" "rally-gw" {
    vpc_id = "${aws_vpc.rallyVPC.id}"
    tags {
        Name = "Gateway Rally"
    }    
}   