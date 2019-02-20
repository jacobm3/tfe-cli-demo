# specify AWS_ACCESS_KEY_ID and AWS_SECRET_ACCESS_KEY in this file
. .terraform.env

HOST=ptfe-demo.jacobm.hashidemos.io
ORG=demo-org
WS=cli-workspace

tfe workspace create -tfe-address $HOST -tfe-org $ORG -tfe-workspace $WS 

tfe pushvars -dry-run false -overwrite-all true -name ${ORG}/${WS} \
 -tfe-address $HOST \
 -var "business_unit=fin_srv" \
 -var "team=internal_qa" \
 -svar "secret=123456" \
 -env-var "AWS_ACCESS_KEY_ID=${AWS_ACCESS_KEY_ID}" \
 -senv-var "AWS_SECRET_ACCESS_KEY=${AWS_SECRET_ACCESS_KEY}"

