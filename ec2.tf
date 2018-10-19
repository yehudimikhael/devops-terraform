#KEY_PAIR
resource "aws_key_pair" "terraform-ec2-key" {
    key_name = "terraform_ec2_key"
    public_key = "${var.key_pair}"
}


#Frontend
resource "aws_instance" "frontend-rally" {
    ami = "ami-0ac019f4fcb7cb7e6"
    instance_type = "t2.micro"
    key_name = "${aws_key_pair.terraform-ec2-key.id}"
    associate_public_ip_address = true
    subnet_id = "${aws_subnet.rally-public.id}"
    vpc_security_group_ids = ["${aws_security_group.ssh-rally.id}", "${aws_security_group.http-rally.id}"]
    tags { 
        Name = "Frontend Rally"
    }

}

#BackEnd
resource "aws_instance" "backend-rally" {
    ami = "ami-0ac019f4fcb7cb7e6"
    instance_type = "t2.micro"
    associate_public_ip_address = true
    key_name = "${aws_key_pair.terraform-ec2-key.id}"
    subnet_id = "${aws_subnet.rally-public.id}"
    vpc_security_group_ids = ["${aws_security_group.ssh-rally.id}", "${aws_security_group.flask-rally.id}"]
    tags {
        Name = "Backend Rally"
    } 
}

