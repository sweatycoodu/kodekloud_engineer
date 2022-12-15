# Create the default VPC.
aws ec2 create-default-vpc --region us-east-1 --output text --query 'Vpc.VpcId' 

# Query the sybnet ID of the default VPC.
aws ec2 describe-subnets --region us-east-1 --filters "Name=vpc-id,Values=vpc-0928bad4f8adca747" --output text --query 'Subnets[0].SubnetId'

# Create a security group.
aws ec2 create-security-group --group-name LabSG --description "LabSG" --vpc-id vpc-0928bad4f8adca747 --output text --query 'GroupId'

# Add rules to the security group.
aws ec2 authorize-security-group-ingress --group-id sg-0969ef044e4bd26ab --protocol tcp --port 22 --cidr 0.0.0.0/0 --output text --query 'Return'
aws ec2 authorize-security-group-ingress --group-id sg-0969ef044e4bd26ab --protocol tcp --port 80 --cidr 0.0.0.0/0 --output text --query 'Return'

# Create install_apache.sh.
cat << EOF > install_apache.sh
#!/bin/bash
yum update -y
yum install httpd -y
systemctl start httpd
systemctl enable httpd
echo "<h1>Lab</h1>" > /var/www/html/index.html
EOF

# Create a key pair.
aws ec2 create-key-pair --key-name Lab --query 'KeyMaterial' --output text > Lab.pem && chmod 400 Lab.pem

# Create an EC2 instance.
aws ec2 run-instances /
--region us-east-1 /
--image-id ami-0b0dcb5067f052a63 /
--count 1 /
--instance-type t2.micro /
--key-name Lab.pem /
--security-group-ids sg-0969ef044e4bd26ab /
--subnet-id subnet-09558592f3a4edcf3 /
--associate-public-ip-address /
--tag-specifications 'ResourceType=instance,Tags=[{Key=Name,Value=Lab}]' /
--output text --query 'Instances[0].InstanceId'
--block-device-mappings '[{"DeviceName":"/dev/sda1","Ebs":{"VolumeSize":8}}]' /
--user-data file://install_apache.sh /
--output text --query 'Instances[0].InstanceId' --query 'Instances[0].PublicIpAddress' --query 'Instances[0].userdata' /

aws ec2 run-instances --region us-east-1 --image-id ami-0b0dcb5067f052a63 --count 1 --instance-type t2.micro --key-name Lab --security-group-ids sg-0969ef044e4bd26ab --subnet-id subnet-09558592f3a4edcf3 --associate-public-ip-address --tag-specifications 'ResourceType=instance,Tags=[{Key=Name,Value=Lab}]' --output text --query 'Instances[0].InstanceId' --block-device-mappings '[{"DeviceName":"/dev/sda1","Ebs":{"VolumeSize":8}}]' --user-data file://install_apache.sh --output text --query 'Instances[0].InstanceId' --query 'Instances[0].PublicIpAddress' --query 'Instances[0].userdata'