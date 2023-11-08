aws s3 cp ./generative-ai-application-builder-on-aws.template s3://gen-ai-cloudformations/generative-ai-application-builder/stack.template

aws cloudformation create-stack \
  --stack-name genAI-apps-stack-cli \
  --template-url https://gen-ai-cloudformations.s3.amazonaws.com/generative-ai-application-builder/stack.template \
  --parameters ParameterKey=AdminUserEmail,ParameterValue=ramashish.gupta@digital-alpha.com \
  --capabilities CAPABILITY_IAM
  