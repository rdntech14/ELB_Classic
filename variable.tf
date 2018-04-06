variable "AWS_REGION" {
  default     = "us-east-1"
  description = "This is AWS region name"
}

variable "elb_security_group" {
  type        = "list"
  default     = ["sg-b3422ac6"]
  description = "This is ELB security group"
}

variable "elb_zones" {
  type        = "list"
  default     = ["us-east-1a", "us-east-1b"]
  description = "This is availability_zones assciate with ELB"
}

variable "instance_list" {
  type        = "list"
  default     = ["i-0b17e8ecd8f3c86b9", "i-0e809ae59ed126d51"]
  description = "This is the isntances that will be associated with ELB"
}
