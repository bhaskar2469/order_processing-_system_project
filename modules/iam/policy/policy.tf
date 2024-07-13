resource "aws_iam_policy" "G_Bhaskar_OP_123_POLICY" {
  name = var.policy_name
  description = var.policy_description
  policy = file("${path.module}/policies/policy.json")
}
