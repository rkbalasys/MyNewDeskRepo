resource "aws_instance" "testec2" {
    ami             = var.ami-id
    instance_type   = var.ins_type
    private_ip      = var.ip_addr
    security_group = var.sec_grp
    subnet_id       = var.sub_id
    # vpc_id          = var.vpcid
    
}
