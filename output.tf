output "ec2_ips" {
  value = ["${aws_instance.web.*.public_ip}"]
}

resource "local_file" "eips" {
    content  = join("\n", "${aws_instance.web.*.public_ip}")
    filename = "info/eips.txt"
}