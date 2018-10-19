#HTTP
resource "aws_security_group" "http-rally" {
    name = "HTTP"
    description = "Permitir acesso HTTP"
    vpc_id = "${aws_vpc.rallyVPC.id}"
    ingress {
        from_port = 80
        to_port = 80
        protocol = "tcp"
        cidr_blocks = ["0.0.0.0/0"]
    }   
}
#MYSQL
resource "aws_security_group" "mysq-rally" {
    name = "Mysql"
    description = "Permitir acesso ao MYSQL"
    vpc_id = "${aws_vpc.rallyVPC.id}"
    ingress {
        from_port = 3306
        to_port = 3306
        protocol = "tcp"
        cidr_blocks = ["175.15.0.0/24"]
    }
    tags {
        Name = "Acesso Mysql"
    }
}
#APP
resource "aws_security_group" "flask-rally" {
    name = "Flask"
    description = "Permitir acesso a Aplicacao Backend"
    vpc_id = "${aws_vpc.rallyVPC.id}"
    ingress {
        from_port = 5000
        to_port = 5000
        protocol = "tcp"
        cidr_blocks = ["0.0.0.0/0"]
    }   
}
#SSH
resource "aws_security_group" "ssh-rally" {
    name = "SSH"
    description = "Acesso via SSH"
    vpc_id = "${aws_vpc.rallyVPC.id}"
     ingress {
        from_port = 22
        to_port = 22
        protocol = "tcp"
        cidr_blocks = ["0.0.0.0/0"]
    }
}
#ICMP
resource "aws_security_group" "icmp-rally" {
    name = "ICMP"
    description = "Ping ICMP"
    vpc_id = "${aws_vpc.rallyVPC.id}"
     ingress {
        from_port = 0
        to_port = 0 
        protocol = "icmp"
        cidr_blocks = ["0.0.0.0/0"]
    }
}