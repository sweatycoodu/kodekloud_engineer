# Instructions for ACG Lab:
# Introduction to AWS Identity and Access Management (IAM)

# Add user-1 to the S3-Support group
aws iam add-user-to-group --user-name user-1 --group-name S3-Support

# Add user-2 to the EC2-Support group
aws iam add-user-to-group --user-name user-2 --group-name EC2-Support

# Add user-3 to the EC2-Admin group
aws iam add-user-to-group --user-name user-3 --group-name EC2-Admin

# Check the group membership of all users.
aws iam get-group --group-name S3-Support --output text --query 'Users[*].UserName'
aws iam get-group --group-name EC2-Support --output text --query 'Users[*].UserName'
aws iam get-group --group-name EC2-Admin --output text --query 'Users[*].UserName'

# Login with user-1 via GUI with provided credentials.