provider "aws" {
  region = "us-east-1" # Replace with your desired region
}

/*# Create IAM User
resource "aws_iam_user" "kiran" {
  name = "kiran"
  path = "/"
} 

# Create Access Key for User
resource "aws_iam_access_key" "kiran" {
  user = aws_iam_user.kiran.name
}

# Attach AdministratorAccess Policy to User
resource "aws_iam_user_policy_attachment" "kiran_admin_policy" {
  user       = aws_iam_user.kiran.name
  policy_arn = "arn:aws:iam::aws:policy/AmazonS3FullAccess"
}

resource "aws_iam_user_policy_attachment" "kiran_EC2_policy" {
  user       = aws_iam_user.kiran.name
  policy_arn = "arn:aws:iam::aws:policy/AmazonEC2FullAccess"
}
# Output Access Key and Secret Key
output "kiran_access_key" {
  value = aws_iam_access_key.kiran.id
  sensitive = true
}

output "kiran_secret_key" {
  value = aws_iam_access_key.kiran.secret
  sensitive = true
} */

resource "aws_instance" "web" {
  ami           = "ami-0427090fd1714168b"
  instance_type = "t2.micro"
  subnet_id = "subnet-0c0028e78d6709111"

  tags = {
    Name = "CICD"
  }
}
