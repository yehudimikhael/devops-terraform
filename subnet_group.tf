
#GROUP SUB_NET MYSQL
resource "aws_db_subnet_group" "db-subnet-rally" {
    name = "mysql-db"
    subnet_ids = ["${aws_subnet.rally-private-1.id}", "${aws_subnet.rally-private-2.id}"]
}