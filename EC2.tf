resource "aws_instance" "testec2" {
    ami           = "ami-0d058fe428540cd89"
    instance_type = "t2.micro"
    
}
