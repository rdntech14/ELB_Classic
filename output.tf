output "ELB_DNS" {
  value = "${aws_elb.ELB_TRF.dns_name}"
}
