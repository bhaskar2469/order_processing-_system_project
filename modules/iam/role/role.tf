resource "aws_iam_role" "G_Bhaskar_123_LAMBDA_ROLE" {
  name = var.role_name
  assume_role_policy = var.assume_role
  
}
