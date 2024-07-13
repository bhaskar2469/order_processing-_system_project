################################################################################################
# DYNAMO_DB CREATION
################################################################################################

resource "aws_dynamodb_table" "G_Bhaskar_OP_123_DynamoDBTable" {
  name         = var.G_Bhaskar_OP_123_DynamoDBTable_Name
  billing_mode = var.G_Bhaskar_OP_123_DynamoDBTable_BillingMode
  hash_key     = var.G_Bhaskar_OP_123_DynamoDBTable_HashKey
  attribute {
    name = var.G_Bhaskar_OP_123_DynamoDBTable_HashKey
    type = var.G_Bhaskar_OP_123_DynamoDBTable_AttributeType
  }
  tags        = var.common_tags
}
