output "G_Bhaskar_OP_123_LambdaTokenAuthorizer_InvokeARN" {
  value = aws_lambda_function.G_Bhaskar_OP_123_LambdaTokenAuthorizer.invoke_arn
}

output "G_Bhaskar_OP_123_LambdaFunction_GET_FunctionName" {
  value = aws_lambda_function.G_Bhaskar_OP_123_LambdaFunction_GET.function_name
}

output "G_Bhaskar_OP_123_LambdaFunction_GET_ARN" {
  value = aws_lambda_function.G_Bhaskar_OP_123_LambdaFunction_GET.arn
}
output "G_Bhaskar_OP_123_LambdaFunction_Runtime" {
  value = aws_lambda_function.G_Bhaskar_OP_123_LambdaFunction_CRUD.runtime
}
output "G_Bhaskar_OP_123_LambdaFunction_CRUD_FunctionName" {
  value = aws_lambda_function.G_Bhaskar_OP_123_LambdaFunction_CRUD.function_name
}