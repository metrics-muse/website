# if [[ -z "${GH_PERSONAL_ACCESS_TOKEN}" ]]; then
#   echo "GH_PERSONAL_ACCESS_TOKEN is not set"
#   exit 1
# fi
GH_PERSONAL_ACCESS_TOKEN="d51e35b5a9f42835c568ce2fc8dc120d241a3dc9"


domain="metricsmuse.com"
stack_path=./deployment/cloudformation/stack.yaml
repository=https://github.com/metrics-muse/website/tree/master

aws cloudformation deploy \
  --template-file ${stack_path} \
  --capabilities CAPABILITY_IAM \
  --parameter-overrides \
      OauthToken=${GH_PERSONAL_ACCESS_TOKEN} \
      Domain=${domain} \
      Repository=${repository} \
  --stack-name ${ENV}-website
