# Instructions for ACG Lab:
# Create and Assume Roles in AWS

# Create json for the 'S3RestrictedPolicy' IAM policy.
touch S3RestrictedPolicy.json



# Create the 'S3RestrictedPolicy' IAM policy.
aws iam create-policy --policy-name S3RestrictedPolicy --policy-document file://S3RestrictedPolicy.json