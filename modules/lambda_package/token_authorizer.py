def lambda_handler(event, context):
    print('********* event is - *********')
    print(event)

    auth = 'Deny'
    if event['authorizationToken'] == '123':
        auth = 'Allow'
    else:
        auth = 'Deny'

    authResponse = {
        "principalId": "abc123",
        "policyDocument": {
            "Version": "2012-10-17",
            "Statement": [
                {
                    "Action": "execute-api:Invoke",
                    "Resource": [
                        "arn:aws:execute-api:ap-southeast-1:your_aws_id:*/*/*",
                        "arn:aws:execute-api:ap-southeast-2:your_aws_id:*/*/*"
                    ],
                    "Effect": auth
                }
            ]
        }
    }

    return authResponse
