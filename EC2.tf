data "aws_ami" "myami" {
    most_recent = true
    owners      = ["amazon"]
    
    
    filter {
        name    = "name"
        values  = ["amzn2-ami-hvm*"]
    }
}

resource "aws_instance" "testec2" {
    ami             = data.aws_ami.myami.id
    instance_type   = var.ins_type
    private_ip      = var.ip_addr
  # security_groups = var.sec_grp
    subnet_id       = var.sub_id
  # vpc_id          = var.vpcid
    
}
