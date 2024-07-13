resource "aws_iam_policy_attachment" "G_Bhaskar_OP_123_POLICY_ATTACH" {
  name = var.policy_attachment
  roles = [var.role_name]
  policy_arn = var.policy_arn
}
