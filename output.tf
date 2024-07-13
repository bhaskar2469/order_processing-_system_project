output "G_Bhaskar_OP_123_DynamoDBTable_Name" {
  value = module.dynamo_db_ap-southeast-1.G_Bhaskar_OP_123_DynamoDBTable_Name
}
output "aws_dynamodb_table_hash_key_type" {
    value = module.dynamo_db_ap-southeast-1.G_Bhaskar_OP_123_DynamoDBTable_Hash_key_Type
  
}
output "dynamo_db_key" {
  value = module.dynamo_db_ap-southeast-1.G_Bhaskar_OP_123_DynamoDBTable_Hash_key
 
}


output "dynamo_db_billing_mode" {
  value = module.dynamo_db_ap-southeast-1.G_Bhaskar_OP_123_DynamoDBTable_Billing_Mode
 
}
output "crud_lambda_function_name" {
  value = module.lambda_package_ap-southeast-1.G_Bhaskar_OP_123_LambdaFunction_CRUD_FunctionName
}
output "lambda_functions_runtime" {
  value = module.lambda_package_ap-southeast-1.G_Bhaskar_OP_123_LambdaFunction_Runtime
}
output "get_lambda_function_name"{
  value = module.lambda_package_ap-southeast-1.G_Bhaskar_OP_123_LambdaFunction_GET_FunctionName
}
output "sqs_queue_name" {
  value = module.sqs_ap-southeast-1.G_Bhaskar_OP_123_QueueSQS_Name
 
}
output "sqs_queue_url" {
  value = module.sqs_ap-southeast-1.G_Bhaskar_OP_123_QueueSQS_URL
}
 
output "common_tags" {
  value = module.api_gateway_ap-southeast-1.G_Bhaskar_OP_123_APIGateway_Tags
}
output "api_gateway_name" {
  value = module.api_gateway_ap-southeast-1.G_Bhaskar_OP_123_APIGateway_Name
}
output "api_gateway_arn" {
  value = module.api_gateway_ap-southeast-1.G_Bhaskar_OP_123_APIGateway_Execution_ARN
 
}