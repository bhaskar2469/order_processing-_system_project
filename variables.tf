################################################################################################
# PROVIDER
################################################################################################

variable "access_key" {}
variable "secret_key" {}
# variable "region" {}
variable "aws_account" {}
variable "common_tags" {}

################################################################################################
# IAM VARIABLES
################################################################################################

# variable "G_Bhaskar_OP_123_APIGatewayRole_Name" {}
# variable "api_gateway_role_policy" {}
# variable "G_Bhaskar_OP_123_APIGatewayPolicy_Name" {}
# variable "G_Bhaskar_OP_123_APIGatewayPolicy_Description" {}
# variable "api_gateway_policy" {}
# variable "G_Bhaskar_OP_123_APIGatewayPolicyAttachment_Name" {}
# variable "G_Bhaskar_OP_123_LambdaRoleForAuthorizer_Name" {}
# variable "lambda_role_policy" {}
# variable "G_Bhaskar_OP_123_LambdaFullAccess_Name" {}
# variable "G_Bhaskar_OP_123_LambdaFullAccess_PolicyARN" {}
# variable "G_Bhaskar_OP_123_APIGatewayCustomPolicy_Name" {}
# variable "G_Bhaskar_OP_123_APIGatewayCustomPolicy_Description" {}
# variable "api_gateway_custom_policy" {}
# variable "G_Bhaskar_OP_123_APIPolicyAttachment_Name" {}
# variable "G_Bhaskar_OP_123_LambdaRole_Name" {}
# variable "lambdarole" {}
# variable "G_Bhaskar_OP_123_LambdaDynamoDBPolicyAttachment_Name" {}
# variable "G_Bhaskar_OP_123_LambdaDynamoDBPolicyAttachment_PolicyARN" {}
# variable "G_Bhaskar_OP_123_LambdaSQSPolicy_Name" {}
# variable "G_Bhaskar_OP_123_LambdaSQSPolicy_Description" {}
# variable "lambda_sqs_policy" {}
# variable "G_Bhaskar_OP_123_CloudWatchPolicy_Name" {}
# variable "G_Bhaskar_OP_123_CloudWatchPolicy_Description" {}
# variable "cloudwatch_policy" {}
# variable "G_Bhaskar_OP_123_CloudWatchPolicyAttachment_Name" {}

#IAM
variable "policy_name" {}
variable "policy_description" {}
variable "role_name" {}
variable "policy_attachment" {}

# variable "iam_role_arn" {}

################################################################################################
# API_GATEWAY VARIABLES
################################################################################################

variable "G_Bhaskar_OP_123_LambdaTokenAuthorizer_Name" {}
variable "G_Bhaskar_OP_123_LambdaTokenAuthorizer_Type" {}
variable "G_Bhaskar_OP_123_LambdaTokenAuthorizer_IdentitySource" {}
variable "G_Bhaskar_OP_123_APIGateway_Name" {}
variable "G_Bhaskar_OP_123_APIGateway_Description" {}
variable "G_Bhaskar_OP_123_APIGateway_EndpointType" {}
variable "G_Bhaskar_OP_123_APIGateway_Resource_PathPart" {}
variable "G_Bhaskar_OP_123_APIGateway_RequestValidator_Name" {}
variable "G_Bhaskar_OP_123_APIGateway_RequestValidator_ValidateRequestBody" {}
variable "G_Bhaskar_OP_123_APIGateway_HTTPMETHOD" {}
variable "G_Bhaskar_OP_123_APIGateway_Method_Authorization" {}
variable "G_Bhaskar_OP_123_APIGateway_Integration_TYPE" {}
variable "G_Bhaskar_OP_123_APIGateway_Integration_RequestTemplates" {}
variable "G_Bhaskar_OP_123_APIGateway_Integration_RequestParameters" {}
variable "G_Bhaskar_OP_123_APIGateway_IntegrationResponse_Post_ResponseTemplate" {}
variable "G_Bhaskar_OP_123_APIGateway_IntegrationResponse_PUT_ResponseTemplate" {}
variable "G_Bhaskar_OP_123_APIGateway_MethodResponse_DELETE_ResponseTemplate" {}
variable "G_Bhaskar_OP_123_APIGateway_MethodResponse_StatusCode" {}
variable "G_Bhaskar_OP_123_APIGateway_Method_PUT_HttpMethod" {}
variable "G_Bhaskar_OP_123_APIGateway_Method_DELETE_HttpMethod" {}
variable "G_Bhaskar_OP_123_APIGateway_Invoke_GET_StatementID" {}
variable "G_Bhaskar_OP_123_APIGateway_Invoke_GET_Action" {}
variable "G_Bhaskar_OP_123_APIGateway_Invoke_GET_Principle" {}
variable "G_Bhaskar_OP_123_Method_GET_HttpMethod" {}
variable "G_Bhaskar_OP_123_Integration_GET_Type" {}
variable "G_Bhaskar_OP_123_Integration_GET_ApplicationJson" {}
variable "G_Bhaskar_OP_123_MethodResponse_GET_ResponseModels" {}
variable "G_Bhaskar_OP_123_IntegrationResponse_GET_ResponseTemplate" {}
variable "G_Bhaskar_OP_123_APIGatewayDeployment_StageName" {}

variable "arn_apigateway" {}
variable "G_Bhaskar_OP_123_QueueSQS_path" {}

################################################################################################
# DYNAMO_DB VARIABLES
################################################################################################

variable "G_Bhaskar_OP_123_DynamoDBTable_Name" {}
variable "G_Bhaskar_OP_123_DynamoDBTable_BillingMode" {}
variable "G_Bhaskar_OP_123_DynamoDBTable_HashKey" {}
variable "G_Bhaskar_OP_123_DynamoDBTable_AttributeType" {}

################################################################################################
# SQS_QUEUE VARIABLES
################################################################################################

variable "G_Bhaskar_OP_123_QueueSQS_Name" {}
variable "G_Bhaskar_OP_123_QueueSQS_DelaySeconds" {}
variable "G_Bhaskar_OP_123_QueueSQS_MaxMessageSize" {}
variable "G_Bhaskar_OP_123_QueueSQS_MessageRetentionSeconds" {}
variable "G_Bhaskar_OP_123_QueueSQS_VisisbilityTimeoutSeconds" {}
variable "G_Bhaskar_OP_123_QueueSQS_ReceiveWaitTimeSeconds" {}

################################################################################################
# LAMBDA_PACKAGE VARIABLES
################################################################################################

variable "G_Bhaskar_OP_123_LambdaFunction_CRUD_FileName" {}
variable "G_Bhaskar_OP_123_LambdaFunction_CRUD_FunctionName" {}
variable "G_Bhaskar_OP_123_LambdaFunction_CRUD_Handler" {}
variable "G_Bhaskar_OP_123_LambdaFunction_Runtime" {}
variable "G_Bhaskar_OP_123_LambdaFunction_GET_FileName" {}
variable "G_Bhaskar_OP_123_LambdaFunction_GET_FunctionName" {}
variable "G_Bhaskar_OP_123_LambdaFunction_GET_Handler" {}
variable "G_Bhaskar_OP_123_LambdaTokenAuthorizer_FileName" {}
variable "G_Bhaskar_OP_123_LambdaTokenAuthorizer_FunctionName" {}
variable "G_Bhaskar_OP_123_LambdaTokenAuthorizer_Handler" {}
variable "G_Bhaskar_OP_123_LambdaTrigger_BatchSize" {}
variable "G_Bhaskar_OP_123_LambdaTrigger_MaximumBatchingWindowInSeconds" {}

variable "G_Bhaskar_OP_123_LambdaFunction_CRUD_FileName_archives" {}
variable "G_Bhaskar_OP_123_LambdaFunction_GET_FileName_archives" {}
variable "G_Bhaskar_OP_123_LambdaTokenAuthorizer_FileName_archives" {}

variable "G_Bhaskar_OP_123_LambdaFunction_CRUD_Archive" {}
variable "G_Bhaskar_OP_123_LambdaFunction_GET_Archive" {}
variable "G_Bhaskar_OP_123_LambdaTokenAuthorizer_Archive" {}
