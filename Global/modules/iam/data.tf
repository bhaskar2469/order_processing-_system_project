data "aws_iam_policy_document" "G_Bhaskar_OP_123_ASSUME_ROLE" {
  statement {
    effect = "Allow"

    principals {
      type        = "Service"
      identifiers = ["apigateway.amazonaws.com", "lambda.amazonaws.com"]
    }

    actions = ["sts:AssumeRole"]
  }
}
