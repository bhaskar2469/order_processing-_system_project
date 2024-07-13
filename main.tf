###############################################################################################
# ap-southeast-1
###############################################################################################

################################################################################################
# IAM MODULE
################################################################################################


module "iam" {
  providers = {
    aws = aws.ap-southeast-1

  }

  source             = "./Global/modules/iam"

  policy_description = var.policy_description

  policy_attachment  = var.policy_attachment

  policy_name        = var.policy_name

  role_name          = var.role_name
  

   
}

################################################################################################
# DYNAMO_DB MODULE
################################################################################################
module "dynamo_db_ap-southeast-1" {

  source = "./modules/dynamo_db"
  providers = {
    aws = aws.ap-southeast-1

  }

  G_Bhaskar_OP_123_DynamoDBTable_Name          = var.G_Bhaskar_OP_123_DynamoDBTable_Name
  G_Bhaskar_OP_123_DynamoDBTable_BillingMode   = var.G_Bhaskar_OP_123_DynamoDBTable_BillingMode
  G_Bhaskar_OP_123_DynamoDBTable_HashKey       = var.G_Bhaskar_OP_123_DynamoDBTable_HashKey
  G_Bhaskar_OP_123_DynamoDBTable_AttributeType = var.G_Bhaskar_OP_123_DynamoDBTable_AttributeType
  common_tags                                  = var.common_tags

}

################################################################################################
# API_GATEWAY MODULE
################################################################################################

module "api_gateway_ap-southeast-1" {
  source = "./modules/api_gateway"
  providers = {
    aws = aws.ap-southeast-1

  }

  G_Bhaskar_OP_123_LambdaTokenAuthorizer_InvokeARN = module.lambda_package_ap-southeast-1.G_Bhaskar_OP_123_LambdaTokenAuthorizer_InvokeARN
  G_Bhaskar_OP_123_LambdaFunction_GET_FunctionName = module.lambda_package_ap-southeast-1.G_Bhaskar_OP_123_LambdaFunction_GET_FunctionName
  G_Bhaskar_OP_123_LambdaFunction_GET_ARN          = module.lambda_package_ap-southeast-1.G_Bhaskar_OP_123_LambdaFunction_GET_ARN

  G_Bhaskar_OP_123_LambdaTokenAuthorizer_Name                           = var.G_Bhaskar_OP_123_LambdaTokenAuthorizer_Name
  G_Bhaskar_OP_123_LambdaTokenAuthorizer_Type                           = var.G_Bhaskar_OP_123_LambdaTokenAuthorizer_Type
  G_Bhaskar_OP_123_LambdaTokenAuthorizer_IdentitySource                 = var.G_Bhaskar_OP_123_LambdaTokenAuthorizer_IdentitySource
  G_Bhaskar_OP_123_APIGateway_Name                                      = var.G_Bhaskar_OP_123_APIGateway_Name
  G_Bhaskar_OP_123_APIGateway_Description                               = var.G_Bhaskar_OP_123_APIGateway_Description
  G_Bhaskar_OP_123_APIGateway_EndpointType                              = var.G_Bhaskar_OP_123_APIGateway_EndpointType
  G_Bhaskar_OP_123_APIGateway_Resource_PathPart                         = var.G_Bhaskar_OP_123_APIGateway_Resource_PathPart
  G_Bhaskar_OP_123_APIGateway_RequestValidator_Name                     = var.G_Bhaskar_OP_123_APIGateway_RequestValidator_Name
  G_Bhaskar_OP_123_APIGateway_RequestValidator_ValidateRequestBody      = var.G_Bhaskar_OP_123_APIGateway_RequestValidator_ValidateRequestBody
  G_Bhaskar_OP_123_APIGateway_HTTPMETHOD                                = var.G_Bhaskar_OP_123_APIGateway_HTTPMETHOD
  G_Bhaskar_OP_123_APIGateway_Method_Authorization                      = var.G_Bhaskar_OP_123_APIGateway_Method_Authorization
  G_Bhaskar_OP_123_APIGateway_Integration_TYPE                          = var.G_Bhaskar_OP_123_APIGateway_Integration_TYPE
  G_Bhaskar_OP_123_APIGateway_Integration_RequestTemplates              = var.G_Bhaskar_OP_123_APIGateway_Integration_RequestTemplates
  G_Bhaskar_OP_123_APIGateway_Integration_RequestParameters             = var.G_Bhaskar_OP_123_APIGateway_Integration_RequestParameters
  G_Bhaskar_OP_123_APIGateway_IntegrationResponse_Post_ResponseTemplate = var.G_Bhaskar_OP_123_APIGateway_IntegrationResponse_Post_ResponseTemplate
  G_Bhaskar_OP_123_APIGateway_IntegrationResponse_PUT_ResponseTemplate  = var.G_Bhaskar_OP_123_APIGateway_IntegrationResponse_PUT_ResponseTemplate
  G_Bhaskar_OP_123_APIGateway_MethodResponse_DELETE_ResponseTemplate    = var.G_Bhaskar_OP_123_APIGateway_MethodResponse_DELETE_ResponseTemplate
  G_Bhaskar_OP_123_APIGateway_MethodResponse_StatusCode                 = var.G_Bhaskar_OP_123_APIGateway_MethodResponse_StatusCode
  G_Bhaskar_OP_123_APIGateway_Method_PUT_HttpMethod                     = var.G_Bhaskar_OP_123_APIGateway_Method_PUT_HttpMethod
  G_Bhaskar_OP_123_APIGateway_Method_DELETE_HttpMethod                  = var.G_Bhaskar_OP_123_APIGateway_Method_DELETE_HttpMethod
  G_Bhaskar_OP_123_APIGateway_Invoke_GET_StatementID                    = var.G_Bhaskar_OP_123_APIGateway_Invoke_GET_StatementID
  G_Bhaskar_OP_123_APIGateway_Invoke_GET_Action                         = var.G_Bhaskar_OP_123_APIGateway_Invoke_GET_Action
  G_Bhaskar_OP_123_APIGateway_Invoke_GET_Principle                      = var.G_Bhaskar_OP_123_APIGateway_Invoke_GET_Principle
  G_Bhaskar_OP_123_Method_GET_HttpMethod                                = var.G_Bhaskar_OP_123_Method_GET_HttpMethod
  G_Bhaskar_OP_123_Integration_GET_Type                                 = var.G_Bhaskar_OP_123_Integration_GET_Type
  G_Bhaskar_OP_123_Integration_GET_ApplicationJson                      = var.G_Bhaskar_OP_123_Integration_GET_ApplicationJson
  G_Bhaskar_OP_123_MethodResponse_GET_ResponseModels                    = var.G_Bhaskar_OP_123_MethodResponse_GET_ResponseModels
  G_Bhaskar_OP_123_IntegrationResponse_GET_ResponseTemplate             = var.G_Bhaskar_OP_123_IntegrationResponse_GET_ResponseTemplate
  G_Bhaskar_OP_123_APIGatewayDeployment_StageName                       = var.G_Bhaskar_OP_123_APIGatewayDeployment_StageName
  arn_apigateway                                                        = var.arn_apigateway
  G_Bhaskar_OP_123_QueueSQS_path                                        = var.G_Bhaskar_OP_123_QueueSQS_path
  aws_account                                                           = var.aws_account
  common_tags                                                           = var.common_tags
   iam_role_arn             = module.iam.iam_role_arn

}

################################################################################################
# SQS MODULE
################################################################################################
module "sqs_ap-southeast-1" {
  source = "./modules/sqs"
  providers = {
    aws = aws.ap-southeast-1

  }

  G_Bhaskar_OP_123_APIGateway_Execution_ARN           = module.api_gateway_ap-southeast-1.G_Bhaskar_OP_123_APIGateway_Execution_ARN
  G_Bhaskar_OP_123_QueueSQS_Name                      = var.G_Bhaskar_OP_123_QueueSQS_Name
  G_Bhaskar_OP_123_QueueSQS_DelaySeconds              = var.G_Bhaskar_OP_123_QueueSQS_DelaySeconds
  G_Bhaskar_OP_123_QueueSQS_MaxMessageSize            = var.G_Bhaskar_OP_123_QueueSQS_MaxMessageSize
  G_Bhaskar_OP_123_QueueSQS_MessageRetentionSeconds   = var.G_Bhaskar_OP_123_QueueSQS_MessageRetentionSeconds
  G_Bhaskar_OP_123_QueueSQS_VisisbilityTimeoutSeconds = var.G_Bhaskar_OP_123_QueueSQS_VisisbilityTimeoutSeconds
  G_Bhaskar_OP_123_QueueSQS_ReceiveWaitTimeSeconds    = var.G_Bhaskar_OP_123_QueueSQS_ReceiveWaitTimeSeconds
  G_Bhaskar_OP_123_QueueSQS_ARN                       = module.sqs_ap-southeast-1.G_Bhaskar_OP_123_QueueSQS_ARN
  common_tags                                         = var.common_tags

}

################################################################################################
# LAMBDA_PACKAGE MODULE
################################################################################################
module "lambda_package_ap-southeast-1" {
  source = "./modules/lambda_package"
  providers = {
    aws = aws.ap-southeast-1

  }

  G_Bhaskar_OP_123_QueueSQS_ARN                                 = module.sqs_ap-southeast-1.G_Bhaskar_OP_123_QueueSQS_ARN
  G_Bhaskar_OP_123_QueueSQS                                     = module.sqs_ap-southeast-1.G_Bhaskar_OP_123_QueueSQS
  G_Bhaskar_OP_123_DynamoDBTable_Name                           = module.dynamo_db_ap-southeast-1.G_Bhaskar_OP_123_DynamoDBTable_Name
  G_Bhaskar_OP_123_QueueSQS_URL                                 = module.sqs_ap-southeast-1.G_Bhaskar_OP_123_QueueSQS_URL
  G_Bhaskar_OP_123_LambdaFunction_CRUD_FileName                 = var.G_Bhaskar_OP_123_LambdaFunction_CRUD_FileName
  G_Bhaskar_OP_123_LambdaFunction_CRUD_FunctionName             = var.G_Bhaskar_OP_123_LambdaFunction_CRUD_FunctionName
  G_Bhaskar_OP_123_LambdaFunction_CRUD_Handler                  = var.G_Bhaskar_OP_123_LambdaFunction_CRUD_Handler
  G_Bhaskar_OP_123_LambdaFunction_Runtime                       = var.G_Bhaskar_OP_123_LambdaFunction_Runtime
  G_Bhaskar_OP_123_LambdaFunction_GET_FileName                  = var.G_Bhaskar_OP_123_LambdaFunction_GET_FileName
  G_Bhaskar_OP_123_LambdaFunction_GET_FunctionName              = var.G_Bhaskar_OP_123_LambdaFunction_GET_FunctionName
  G_Bhaskar_OP_123_LambdaFunction_GET_Handler                   = var.G_Bhaskar_OP_123_LambdaFunction_GET_Handler
  G_Bhaskar_OP_123_LambdaTokenAuthorizer_FileName               = var.G_Bhaskar_OP_123_LambdaTokenAuthorizer_FileName
  G_Bhaskar_OP_123_LambdaTokenAuthorizer_FunctionName           = var.G_Bhaskar_OP_123_LambdaTokenAuthorizer_FunctionName
  G_Bhaskar_OP_123_LambdaTokenAuthorizer_Handler                = var.G_Bhaskar_OP_123_LambdaTokenAuthorizer_Handler
  G_Bhaskar_OP_123_LambdaTrigger_BatchSize                      = var.G_Bhaskar_OP_123_LambdaTrigger_BatchSize
  G_Bhaskar_OP_123_LambdaTrigger_MaximumBatchingWindowInSeconds = var.G_Bhaskar_OP_123_LambdaTrigger_MaximumBatchingWindowInSeconds
  G_Bhaskar_OP_123_LambdaFunction_CRUD_FileName_archives        = var.G_Bhaskar_OP_123_LambdaFunction_CRUD_FileName_archives
  G_Bhaskar_OP_123_LambdaFunction_GET_FileName_archives         = var.G_Bhaskar_OP_123_LambdaFunction_GET_FileName_archives
  G_Bhaskar_OP_123_LambdaTokenAuthorizer_FileName_archives      = var.G_Bhaskar_OP_123_LambdaTokenAuthorizer_FileName_archives
  G_Bhaskar_OP_123_LambdaFunction_CRUD_Archive                  = var.G_Bhaskar_OP_123_LambdaFunction_CRUD_Archive
  G_Bhaskar_OP_123_LambdaFunction_GET_Archive                   = var.G_Bhaskar_OP_123_LambdaFunction_GET_Archive
  G_Bhaskar_OP_123_LambdaTokenAuthorizer_Archive                = var.G_Bhaskar_OP_123_LambdaTokenAuthorizer_Archive
  common_tags                                                   = var.common_tags
   iam_role_arn             = module.iam.iam_role_arn
}


###############################################################################################
# ap-southeast-2
###############################################################################################


################################################################################################
# DYNAMO_DB MODULE
################################################################################################
module "dynamo_db_ap-southeast-2" {

  source = "./modules/dynamo_db"
  providers = {
    aws = aws.ap-southeast-2

  }

  G_Bhaskar_OP_123_DynamoDBTable_Name          = var.G_Bhaskar_OP_123_DynamoDBTable_Name
  G_Bhaskar_OP_123_DynamoDBTable_BillingMode   = var.G_Bhaskar_OP_123_DynamoDBTable_BillingMode
  G_Bhaskar_OP_123_DynamoDBTable_HashKey       = var.G_Bhaskar_OP_123_DynamoDBTable_HashKey
  G_Bhaskar_OP_123_DynamoDBTable_AttributeType = var.G_Bhaskar_OP_123_DynamoDBTable_AttributeType
  common_tags                                  = var.common_tags

}

################################################################################################
# API_GATEWAY MODULE
################################################################################################

module "api_gateway_ap-southeast-2" {
  source = "./modules/api_gateway"
  providers = {
    aws = aws.ap-southeast-2

  }

  G_Bhaskar_OP_123_LambdaTokenAuthorizer_InvokeARN = module.lambda_package_ap-southeast-2.G_Bhaskar_OP_123_LambdaTokenAuthorizer_InvokeARN
  G_Bhaskar_OP_123_LambdaFunction_GET_FunctionName = module.lambda_package_ap-southeast-2.G_Bhaskar_OP_123_LambdaFunction_GET_FunctionName
  G_Bhaskar_OP_123_LambdaFunction_GET_ARN          = module.lambda_package_ap-southeast-2.G_Bhaskar_OP_123_LambdaFunction_GET_ARN

  G_Bhaskar_OP_123_LambdaTokenAuthorizer_Name                           = var.G_Bhaskar_OP_123_LambdaTokenAuthorizer_Name
  G_Bhaskar_OP_123_LambdaTokenAuthorizer_Type                           = var.G_Bhaskar_OP_123_LambdaTokenAuthorizer_Type
  G_Bhaskar_OP_123_LambdaTokenAuthorizer_IdentitySource                 = var.G_Bhaskar_OP_123_LambdaTokenAuthorizer_IdentitySource
  G_Bhaskar_OP_123_APIGateway_Name                                      = var.G_Bhaskar_OP_123_APIGateway_Name
  G_Bhaskar_OP_123_APIGateway_Description                               = var.G_Bhaskar_OP_123_APIGateway_Description
  G_Bhaskar_OP_123_APIGateway_EndpointType                              = var.G_Bhaskar_OP_123_APIGateway_EndpointType
  G_Bhaskar_OP_123_APIGateway_Resource_PathPart                         = var.G_Bhaskar_OP_123_APIGateway_Resource_PathPart
  G_Bhaskar_OP_123_APIGateway_RequestValidator_Name                     = var.G_Bhaskar_OP_123_APIGateway_RequestValidator_Name
  G_Bhaskar_OP_123_APIGateway_RequestValidator_ValidateRequestBody      = var.G_Bhaskar_OP_123_APIGateway_RequestValidator_ValidateRequestBody
  G_Bhaskar_OP_123_APIGateway_HTTPMETHOD                                = var.G_Bhaskar_OP_123_APIGateway_HTTPMETHOD
  G_Bhaskar_OP_123_APIGateway_Method_Authorization                      = var.G_Bhaskar_OP_123_APIGateway_Method_Authorization
  G_Bhaskar_OP_123_APIGateway_Integration_TYPE                          = var.G_Bhaskar_OP_123_APIGateway_Integration_TYPE
  G_Bhaskar_OP_123_APIGateway_Integration_RequestTemplates              = var.G_Bhaskar_OP_123_APIGateway_Integration_RequestTemplates
  G_Bhaskar_OP_123_APIGateway_Integration_RequestParameters             = var.G_Bhaskar_OP_123_APIGateway_Integration_RequestParameters
  G_Bhaskar_OP_123_APIGateway_IntegrationResponse_Post_ResponseTemplate = var.G_Bhaskar_OP_123_APIGateway_IntegrationResponse_Post_ResponseTemplate
  G_Bhaskar_OP_123_APIGateway_IntegrationResponse_PUT_ResponseTemplate  = var.G_Bhaskar_OP_123_APIGateway_IntegrationResponse_PUT_ResponseTemplate
  G_Bhaskar_OP_123_APIGateway_MethodResponse_DELETE_ResponseTemplate    = var.G_Bhaskar_OP_123_APIGateway_MethodResponse_DELETE_ResponseTemplate
  G_Bhaskar_OP_123_APIGateway_MethodResponse_StatusCode                 = var.G_Bhaskar_OP_123_APIGateway_MethodResponse_StatusCode
  G_Bhaskar_OP_123_APIGateway_Method_PUT_HttpMethod                     = var.G_Bhaskar_OP_123_APIGateway_Method_PUT_HttpMethod
  G_Bhaskar_OP_123_APIGateway_Method_DELETE_HttpMethod                  = var.G_Bhaskar_OP_123_APIGateway_Method_DELETE_HttpMethod
  G_Bhaskar_OP_123_APIGateway_Invoke_GET_StatementID                    = var.G_Bhaskar_OP_123_APIGateway_Invoke_GET_StatementID
  G_Bhaskar_OP_123_APIGateway_Invoke_GET_Action                         = var.G_Bhaskar_OP_123_APIGateway_Invoke_GET_Action
  G_Bhaskar_OP_123_APIGateway_Invoke_GET_Principle                      = var.G_Bhaskar_OP_123_APIGateway_Invoke_GET_Principle
  G_Bhaskar_OP_123_Method_GET_HttpMethod                                = var.G_Bhaskar_OP_123_Method_GET_HttpMethod
  G_Bhaskar_OP_123_Integration_GET_Type                                 = var.G_Bhaskar_OP_123_Integration_GET_Type
  G_Bhaskar_OP_123_Integration_GET_ApplicationJson                      = var.G_Bhaskar_OP_123_Integration_GET_ApplicationJson
  G_Bhaskar_OP_123_MethodResponse_GET_ResponseModels                    = var.G_Bhaskar_OP_123_MethodResponse_GET_ResponseModels
  G_Bhaskar_OP_123_IntegrationResponse_GET_ResponseTemplate             = var.G_Bhaskar_OP_123_IntegrationResponse_GET_ResponseTemplate
  G_Bhaskar_OP_123_APIGatewayDeployment_StageName                       = var.G_Bhaskar_OP_123_APIGatewayDeployment_StageName
  arn_apigateway                                                        = var.arn_apigateway
  G_Bhaskar_OP_123_QueueSQS_path                                        = var.G_Bhaskar_OP_123_QueueSQS_path
  aws_account                                                           = var.aws_account
  common_tags                                                           = var.common_tags
   iam_role_arn             = module.iam.iam_role_arn
}

################################################################################################
# SQS MODULE
################################################################################################
module "sqs_ap-southeast-2" {
  source = "./modules/sqs"
  providers = {
    aws = aws.ap-southeast-2

  }

  G_Bhaskar_OP_123_APIGateway_Execution_ARN           = module.api_gateway_ap-southeast-2.G_Bhaskar_OP_123_APIGateway_Execution_ARN
  G_Bhaskar_OP_123_QueueSQS_Name                      = var.G_Bhaskar_OP_123_QueueSQS_Name
  G_Bhaskar_OP_123_QueueSQS_DelaySeconds              = var.G_Bhaskar_OP_123_QueueSQS_DelaySeconds
  G_Bhaskar_OP_123_QueueSQS_MaxMessageSize            = var.G_Bhaskar_OP_123_QueueSQS_MaxMessageSize
  G_Bhaskar_OP_123_QueueSQS_MessageRetentionSeconds   = var.G_Bhaskar_OP_123_QueueSQS_MessageRetentionSeconds
  G_Bhaskar_OP_123_QueueSQS_VisisbilityTimeoutSeconds = var.G_Bhaskar_OP_123_QueueSQS_VisisbilityTimeoutSeconds
  G_Bhaskar_OP_123_QueueSQS_ReceiveWaitTimeSeconds    = var.G_Bhaskar_OP_123_QueueSQS_ReceiveWaitTimeSeconds
  G_Bhaskar_OP_123_QueueSQS_ARN                       = module.sqs_ap-southeast-2.G_Bhaskar_OP_123_QueueSQS_ARN
  common_tags                                         = var.common_tags

}

################################################################################################
# LAMBDA_PACKAGE MODULE
################################################################################################
module "lambda_package_ap-southeast-2" {
  source = "./modules/lambda_package"
  providers = {
    aws = aws.ap-southeast-2

  }

  G_Bhaskar_OP_123_QueueSQS_ARN                                 = module.sqs_ap-southeast-2.G_Bhaskar_OP_123_QueueSQS_ARN
  G_Bhaskar_OP_123_QueueSQS                                     = module.sqs_ap-southeast-2.G_Bhaskar_OP_123_QueueSQS
  G_Bhaskar_OP_123_DynamoDBTable_Name                           = module.dynamo_db_ap-southeast-2.G_Bhaskar_OP_123_DynamoDBTable_Name
  G_Bhaskar_OP_123_QueueSQS_URL                                 = module.sqs_ap-southeast-2.G_Bhaskar_OP_123_QueueSQS_URL
  G_Bhaskar_OP_123_LambdaFunction_CRUD_FileName                 = var.G_Bhaskar_OP_123_LambdaFunction_CRUD_FileName
  G_Bhaskar_OP_123_LambdaFunction_CRUD_FunctionName             = var.G_Bhaskar_OP_123_LambdaFunction_CRUD_FunctionName
  G_Bhaskar_OP_123_LambdaFunction_CRUD_Handler                  = var.G_Bhaskar_OP_123_LambdaFunction_CRUD_Handler
  G_Bhaskar_OP_123_LambdaFunction_Runtime                       = var.G_Bhaskar_OP_123_LambdaFunction_Runtime
  G_Bhaskar_OP_123_LambdaFunction_GET_FileName                  = var.G_Bhaskar_OP_123_LambdaFunction_GET_FileName
  G_Bhaskar_OP_123_LambdaFunction_GET_FunctionName              = var.G_Bhaskar_OP_123_LambdaFunction_GET_FunctionName
  G_Bhaskar_OP_123_LambdaFunction_GET_Handler                   = var.G_Bhaskar_OP_123_LambdaFunction_GET_Handler
  G_Bhaskar_OP_123_LambdaTokenAuthorizer_FileName               = var.G_Bhaskar_OP_123_LambdaTokenAuthorizer_FileName
  G_Bhaskar_OP_123_LambdaTokenAuthorizer_FunctionName           = var.G_Bhaskar_OP_123_LambdaTokenAuthorizer_FunctionName
  G_Bhaskar_OP_123_LambdaTokenAuthorizer_Handler                = var.G_Bhaskar_OP_123_LambdaTokenAuthorizer_Handler
  G_Bhaskar_OP_123_LambdaTrigger_BatchSize                      = var.G_Bhaskar_OP_123_LambdaTrigger_BatchSize
  G_Bhaskar_OP_123_LambdaTrigger_MaximumBatchingWindowInSeconds = var.G_Bhaskar_OP_123_LambdaTrigger_MaximumBatchingWindowInSeconds

  G_Bhaskar_OP_123_LambdaFunction_CRUD_FileName_archives        = var.G_Bhaskar_OP_123_LambdaFunction_CRUD_FileName_archives
  G_Bhaskar_OP_123_LambdaFunction_GET_FileName_archives         = var.G_Bhaskar_OP_123_LambdaFunction_GET_FileName_archives
  G_Bhaskar_OP_123_LambdaTokenAuthorizer_FileName_archives      = var.G_Bhaskar_OP_123_LambdaTokenAuthorizer_FileName_archives
  G_Bhaskar_OP_123_LambdaFunction_CRUD_Archive                  = var.G_Bhaskar_OP_123_LambdaFunction_CRUD_Archive
  G_Bhaskar_OP_123_LambdaFunction_GET_Archive                   = var.G_Bhaskar_OP_123_LambdaFunction_GET_Archive
  G_Bhaskar_OP_123_LambdaTokenAuthorizer_Archive                = var.G_Bhaskar_OP_123_LambdaTokenAuthorizer_Archive
  common_tags                                                   = var.common_tags
   iam_role_arn             = module.iam.iam_role_arn
}
