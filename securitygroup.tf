#Security grioup for ssh traffic

resource "aws_security_group" "vpc-ssh" {
  name = "vpc-ssh"
  description = "allow ssh traffic to vpc"
  ingress {
    description = "allow port 22"
    from_port = 22
    to_port = 22
    protocol = "tcp"
    cidr_blocks=["0.0.0.0/0"]
  }

  egress {
    description = "allow all traffic outbound"
    from_port=0
    to_port=0
    protocol="-1"
  }
  tags = {
    Name="vpc-ssh"
  }
}

#security group for http/s traffic
resource "aws_security_group" "vpc-web" {
  name = "vpc-http"
  description = "allow http traffic to vpc"
  ingress {
    description = "allow port 80"
    from_port = 80
    to_port = 80
    protocol = "tcp"
    cidr_blocks=["0.0.0.0/0"]
  }

  ingress {
    description = "allow port 443"
    from_port = 443
    to_port = 443
    protocol = "tcp"
    cidr_blocks=["0.0.0.0/0"]
  }

  egress {
    description = "allow all traffic outbound"
    from_port=0
    to_port=0
    protocol="-1"
  }
  tags = {
    Name="vpc-web"
  }
}

