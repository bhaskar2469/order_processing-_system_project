########################################          SQS_QUEUE-SECTION          ########################################

# resource "aws_sqs_queue" "G_Bhaskar_OP_123_ResponseQueue" {
#   name                       = "G_Bhaskar_OP_123_ResponseQueue"
#   delay_seconds              = 0
#   max_message_size           = 262144
#   message_retention_seconds  = 1209600 # 14 days
#   visibility_timeout_seconds = 10
#   receive_wait_time_seconds  = 0
# }

resource "aws_sqs_queue" "G_Bhaskar_OP_123_QueueSQS" {
  name                       = var.G_Bhaskar_OP_123_QueueSQS_Name
  delay_seconds              = var.G_Bhaskar_OP_123_QueueSQS_DelaySeconds
  max_message_size           = var.G_Bhaskar_OP_123_QueueSQS_MaxMessageSize
  message_retention_seconds  = var.G_Bhaskar_OP_123_QueueSQS_MessageRetentionSeconds
  visibility_timeout_seconds = var.G_Bhaskar_OP_123_QueueSQS_VisisbilityTimeoutSeconds
  receive_wait_time_seconds  = var.G_Bhaskar_OP_123_QueueSQS_ReceiveWaitTimeSeconds
  tags        = var.common_tags

#   redrive_policy = jsonencode({
#     deadLetterTargetArn = aws_sqs_queue.G_Bhaskar_OP_123_ResponseQueue.arn
#     maxReceiveCount     = 3
#   })
}