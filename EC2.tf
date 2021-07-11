resource "aws_instance" "testec2" {
    ami           = ami-0e5182fad1edfaa68
    instance_type = "t2.micro"
}
