################################################################################################
# PROVIDER
################################################################################################

access_key  = ""
secret_key  = ""
aws_account = ""
# provideraws = ">= 2.0"

common_tags = {
  Name    = "G_Bhaskar_ORDERPROCESSING_123"
  Project = "ORDERPROCESSING"
  Owner   = "G_Bhaskar"
}

################################################################################################
# IAM TF_VARS
################################################################################################


policy_name = "G_Bhaskar_ORDER_PROCESSING_123_POLICY"
policy_description = "grant access to DynamoDB, SQS, ApiGateway, CloudWatch,lambda "
role_name = "G_Bhaskar_ORDER_PROCESSING_123_API_LAMBDA_ROLES"
policy_attachment = "attaching_polices_to_access_to_api_lambda"
# iam_role_arn   = "module.iam.iam_role_arn"

################################################################################################
# API_GATEWAY TF_VARS
################################################################################################

G_Bhaskar_OP_123_LambdaTokenAuthorizer_Name                           = "G_Bhaskar_OP_123_LambdaTokenAuthorizer"
G_Bhaskar_OP_123_LambdaTokenAuthorizer_Type                           = "TOKEN"
G_Bhaskar_OP_123_LambdaTokenAuthorizer_IdentitySource                 = "method.request.header.authorizationToken"
G_Bhaskar_OP_123_APIGateway_Name                                      = "G_Bhaskar_OP_123_APIGateway"
G_Bhaskar_OP_123_APIGateway_Description                               = "REST API for G_Bhaskar_OP_123_APIGateway"
G_Bhaskar_OP_123_APIGateway_EndpointType                              = "REGIONAL"
G_Bhaskar_OP_123_APIGateway_Resource_PathPart                         = "orders"
G_Bhaskar_OP_123_APIGateway_RequestValidator_Name                     = "G_Bhaskar_OP_123_APIGateway_RequestValidator"
G_Bhaskar_OP_123_APIGateway_RequestValidator_ValidateRequestBody      = true
G_Bhaskar_OP_123_APIGateway_HTTPMETHOD                                = "POST"
G_Bhaskar_OP_123_APIGateway_Method_Authorization                      = "CUSTOM"
G_Bhaskar_OP_123_APIGateway_Integration_TYPE                          = "AWS"
G_Bhaskar_OP_123_APIGateway_Integration_RequestTemplates              = "Action=SendMessage&MessageBody=$input.body"
G_Bhaskar_OP_123_APIGateway_Integration_RequestParameters             = "'application/x-www-form-urlencoded'"
G_Bhaskar_OP_123_APIGateway_IntegrationResponse_Post_ResponseTemplate = "{\"message\": \"Post request is successfull!\"}"
G_Bhaskar_OP_123_APIGateway_IntegrationResponse_PUT_ResponseTemplate  = "{\"message\": \"PUT request is successfull!\"}"
G_Bhaskar_OP_123_APIGateway_MethodResponse_DELETE_ResponseTemplate    = "{\"message\": \"DELETE request is successfull!\"}"
G_Bhaskar_OP_123_APIGateway_MethodResponse_StatusCode                 = "200"
G_Bhaskar_OP_123_APIGateway_Method_PUT_HttpMethod                     = "PUT"
G_Bhaskar_OP_123_APIGateway_Method_DELETE_HttpMethod                  = "DELETE"
G_Bhaskar_OP_123_APIGateway_Invoke_GET_StatementID                    = "G_Bhaskar_OP_123_APIGateway_Invoke_GET"
G_Bhaskar_OP_123_APIGateway_Invoke_GET_Action                         = "lambda:InvokeFunction"
G_Bhaskar_OP_123_APIGateway_Invoke_GET_Principle                      = "apigateway.amazonaws.com"
G_Bhaskar_OP_123_Method_GET_HttpMethod                                = "GET"
G_Bhaskar_OP_123_Integration_GET_Type                                 = "AWS_PROXY"
G_Bhaskar_OP_123_Integration_GET_ApplicationJson                      = "{\"statusCode\": 200}"
G_Bhaskar_OP_123_MethodResponse_GET_ResponseModels                    = "Empty"
G_Bhaskar_OP_123_IntegrationResponse_GET_ResponseTemplate             = ""
G_Bhaskar_OP_123_APIGatewayDeployment_StageName                       = "prod"

arn_apigateway                 = "arn:aws:apigateway:"
G_Bhaskar_OP_123_QueueSQS_path = ":sqs:path/your_aws_id/G_Bhaskar_OP_123_QueueSQS"

################################################################################################
# DYNAMO_DB TF_VARS
################################################################################################

G_Bhaskar_OP_123_DynamoDBTable_Name          = "G_Bhaskar_OP_123_DynamoDBTable"
G_Bhaskar_OP_123_DynamoDBTable_BillingMode   = "PAY_PER_REQUEST"
G_Bhaskar_OP_123_DynamoDBTable_HashKey       = "order_id"
G_Bhaskar_OP_123_DynamoDBTable_AttributeType = "N"

################################################################################################
# SQS_QUEUE TF_VARS
################################################################################################

G_Bhaskar_OP_123_QueueSQS_Name                      = "G_Bhaskar_OP_123_QueueSQS"
G_Bhaskar_OP_123_QueueSQS_DelaySeconds              = 0
G_Bhaskar_OP_123_QueueSQS_MaxMessageSize            = 262144
G_Bhaskar_OP_123_QueueSQS_MessageRetentionSeconds   = 345600
G_Bhaskar_OP_123_QueueSQS_VisisbilityTimeoutSeconds = 5
G_Bhaskar_OP_123_QueueSQS_ReceiveWaitTimeSeconds    = 0

################################################################################################
# LAMBDA_PACKAGE TF_VARS
################################################################################################

G_Bhaskar_OP_123_LambdaFunction_CRUD_FileName                 = "./modules/lambda_package/lambda_function_crud.py"
G_Bhaskar_OP_123_LambdaFunction_CRUD_FunctionName             = "G_Bhaskar_OP_123_LambdaFunction_CRUD"
G_Bhaskar_OP_123_LambdaFunction_CRUD_Handler                  = "lambda_function_crud.lambda_handler"
G_Bhaskar_OP_123_LambdaFunction_Runtime                       = "python3.8"
G_Bhaskar_OP_123_LambdaFunction_GET_FileName                  = "./modules/lambda_package/lambda_function_get.py"
G_Bhaskar_OP_123_LambdaFunction_GET_FunctionName              = "G_Bhaskar_OP_123_LambdaFunction_GET"
G_Bhaskar_OP_123_LambdaFunction_GET_Handler                   = "lambda_function_get.lambda_handler"
G_Bhaskar_OP_123_LambdaTokenAuthorizer_FileName               = "./modules/lambda_package/token_authorizer.py"
G_Bhaskar_OP_123_LambdaTokenAuthorizer_FunctionName           = "G_Bhaskar_OP_123_LambdaTokenAuthorizer"
G_Bhaskar_OP_123_LambdaTokenAuthorizer_Handler                = "token_authorizer.lambda_handler"
G_Bhaskar_OP_123_LambdaTrigger_BatchSize                      = 10
G_Bhaskar_OP_123_LambdaTrigger_MaximumBatchingWindowInSeconds = 0

G_Bhaskar_OP_123_LambdaFunction_CRUD_FileName_archives   = "./modules/lambda_package/archives/lambda_function_crud.zip"
G_Bhaskar_OP_123_LambdaFunction_GET_FileName_archives    = "./modules/lambda_package/archives/lambda_function_get.zip"
G_Bhaskar_OP_123_LambdaTokenAuthorizer_FileName_archives = "./modules/lambda_package/archives/token_authorizer.zip"

G_Bhaskar_OP_123_LambdaFunction_CRUD_Archive   = "/archives/lambda_function_crud.zip"
G_Bhaskar_OP_123_LambdaFunction_GET_Archive    = "/archives/lambda_function_get.zip"
G_Bhaskar_OP_123_LambdaTokenAuthorizer_Archive = "/archives/token_authorizer.zip"
