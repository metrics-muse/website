if [[ -z "${GH_PERSONAL_ACCESS_TOKEN}" ]]; then
  echo "GH_PERSONAL_ACCESS_TOKEN is not set"
  exit 1
fi


domain="metricsmuse.com"
stack_path=./deployment/cloudformation/stack.yaml
repository=https://github.com/metrics-muse/website

aws cloudformation deploy \
  --template-file ${stack_path} \
  --capabilities CAPABILITY_IAM \
  --parameter-overrides \
      OauthToken=${GH_PERSONAL_ACCESS_TOKEN} \
      Domain=${domain} \
      Repository=${repository} \
      Environment=${ENV} \
  --stack-name ${ENV}-website
