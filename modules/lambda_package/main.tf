################################################################################################
# ARCHIVE LAMBDA FUNCTION FILES
################################################################################################

data "archive_file" "G_Bhaskar_OP_123_LambdaFunction_CRUD_Archive" {
  type        = "zip"
  source_file = var.G_Bhaskar_OP_123_LambdaFunction_CRUD_FileName
  output_path = "${path.module}${var.G_Bhaskar_OP_123_LambdaFunction_CRUD_Archive}"
}

data "archive_file" "G_Bhaskar_OP_123_LambdaFunction_GET_Archive" {
  type        = "zip"
  source_file = var.G_Bhaskar_OP_123_LambdaFunction_GET_FileName
  output_path = "${path.module}${var.G_Bhaskar_OP_123_LambdaFunction_GET_Archive}"
}

data "archive_file" "G_Bhaskar_OP_123_LambdaTokenAuthorizer_Archive" {
  type        = "zip"
  source_file = var.G_Bhaskar_OP_123_LambdaTokenAuthorizer_FileName
  output_path = "${path.module}${var.G_Bhaskar_OP_123_LambdaTokenAuthorizer_Archive}"
}

################################################################################################
# LAMBDA_FUNCTION_CRUD CREATION
################################################################################################

resource "aws_lambda_function" "G_Bhaskar_OP_123_LambdaFunction_CRUD" {
  filename      = var.G_Bhaskar_OP_123_LambdaFunction_CRUD_FileName_archives
  function_name = var.G_Bhaskar_OP_123_LambdaFunction_CRUD_FunctionName
  role          = var.iam_role_arn 
  handler       = var.G_Bhaskar_OP_123_LambdaFunction_CRUD_Handler
  runtime       = var.G_Bhaskar_OP_123_LambdaFunction_Runtime

  environment {
    variables = {
      DYNAMODB_TABLE_NAME = var.G_Bhaskar_OP_123_DynamoDBTable_Name,
      SQS_QUEUE_URL       = var.G_Bhaskar_OP_123_QueueSQS_URL,
    }
  }
  tags        = var.common_tags
}



################################################################################################
# LAMBDA_FUNCTION_GET CREATION
################################################################################################

resource "aws_lambda_function" "G_Bhaskar_OP_123_LambdaFunction_GET" {

  filename      = var.G_Bhaskar_OP_123_LambdaFunction_GET_FileName_archives
  function_name = var.G_Bhaskar_OP_123_LambdaFunction_GET_FunctionName
  role          = var.iam_role_arn 
  handler       = var.G_Bhaskar_OP_123_LambdaFunction_GET_Handler
  runtime       = var.G_Bhaskar_OP_123_LambdaFunction_Runtime
  environment {
    variables = {
      DYNAMODB_TABLE_NAME = var.G_Bhaskar_OP_123_DynamoDBTable_Name
    }
  }
  tags        = var.common_tags
}

################################################################################################
# LAMBDA_FUNCTION_LAMBDA-AUTHORIZER CREATION
################################################################################################

resource "aws_lambda_function" "G_Bhaskar_OP_123_LambdaTokenAuthorizer" {

  filename      = var.G_Bhaskar_OP_123_LambdaTokenAuthorizer_FileName_archives
  function_name = var.G_Bhaskar_OP_123_LambdaTokenAuthorizer_FunctionName
  role          = var.iam_role_arn
  handler       = var.G_Bhaskar_OP_123_LambdaTokenAuthorizer_Handler
  runtime       = var.G_Bhaskar_OP_123_LambdaFunction_Runtime
  tags        = var.common_tags
}

################################################################################################
# LAMBDA_EVENT_SOURCE_MAPPING CREATION
################################################################################################

resource "aws_lambda_event_source_mapping" "G_Bhaskar_OP_123_LambdaTrigger" {
  event_source_arn                   = var.G_Bhaskar_OP_123_QueueSQS_ARN
  function_name                      = aws_lambda_function.G_Bhaskar_OP_123_LambdaFunction_CRUD.function_name
  batch_size                         = var.G_Bhaskar_OP_123_LambdaTrigger_BatchSize
  maximum_batching_window_in_seconds = var.G_Bhaskar_OP_123_LambdaTrigger_MaximumBatchingWindowInSeconds
  depends_on                         = [var.G_Bhaskar_OP_123_QueueSQS]
}
