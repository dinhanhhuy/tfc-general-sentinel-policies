module "aws-functions" {
  source = "./check-ec2-environment-tag.sentinel"
}

policy "check-ec2-environment-tag" {
  source = "./restrict-iam-policy-actions.sentinel"
  enforcement_level = "advisory"
}

policy "enforce-mandatory-tags" {
  source = "./restrict-s3-bucket-policies.sentinel"
  enforcement_level = "advisory"
}