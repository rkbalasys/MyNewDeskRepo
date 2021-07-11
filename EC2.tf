resource "aws_instance" "testec2" {
    ami             = "${ami-id}"
    instance_type   = "${ins_type}"
    private_ip      = "${ip_addr}"
    security_groups = "${sec_grp}"
    subnet_id       = "${sub_id}"
    vpc_id          = "${vpcid}"
    
}
