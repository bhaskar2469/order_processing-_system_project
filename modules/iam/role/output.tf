output "iam_role_arn" {
  value = aws_iam_role.G_Bhaskar_123_LAMBDA_ROLE.arn #Used in the Lambda function 
}
output "role_name" {
  value = aws_iam_role.G_Bhaskar_123_LAMBDA_ROLE.name #Used in the Policy attachment
}
