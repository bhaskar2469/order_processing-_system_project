output "G_Bhaskar_OP_123_DynamoDBTable_Name" {
  value = aws_dynamodb_table.G_Bhaskar_OP_123_DynamoDBTable.name
}
output "G_Bhaskar_OP_123_DynamoDBTable_Hash_key_Type" {
  value = var.G_Bhaskar_OP_123_DynamoDBTable_AttributeType
  
}
output "G_Bhaskar_OP_123_DynamoDBTable_Hash_key" {
  value = aws_dynamodb_table.G_Bhaskar_OP_123_DynamoDBTable.hash_key
}
output "G_Bhaskar_OP_123_DynamoDBTable_Billing_Mode" {
  value = aws_dynamodb_table.G_Bhaskar_OP_123_DynamoDBTable.billing_mode
}