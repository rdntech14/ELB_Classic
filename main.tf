provider "aws" {
  region = "${var.AWS_REGION}"
}

resource "aws_elb" "ELB_TRF" {
  name               = "terraform-elb-classic"
  availability_zones = "${var.elb_zones}"
  security_groups    = "${var.elb_security_group}"

  listener {
    instance_port     = 80
    instance_protocol = "http"
    lb_port           = 80
    lb_protocol       = "http"
  }

  health_check {
    healthy_threshold   = 2
    unhealthy_threshold = 2
    timeout             = 2
    target              = "HTTP:80/index.html"
    interval            = 5
  }

  instances                   = "${var.instance_list}"
  cross_zone_load_balancing   = true
  idle_timeout                = 400
  connection_draining         = true
  connection_draining_timeout = 400

  tags {
    Name = "terraform-elb-classic"
  }
}
