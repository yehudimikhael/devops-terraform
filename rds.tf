#MYSQL
resource "aws_db_instance" "db" {
    allocated_storage = 20
    storage_type = "gp2"
    engine = "mysql"
    engine_version = "5.7"
    instance_class = "db.t2.micro"
    name = "inscricao"
    username = "noc"
    password = "concrete123.."
    port = "3306"
    vpc_security_group_ids = ["${aws_security_group.mysq-rally.id}"]
    db_subnet_group_name = "${aws_db_subnet_group.db-subnet-rally.id}"
}