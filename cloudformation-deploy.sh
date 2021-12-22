#!/bin/bash
echo $(which aws)
npm run convertTemplate || exit 1
aws cloudformation deploy --template-file template.json --stack-name jackomueller-stack  --capabilities CAPABILITY_IAM --parameter-overrides GithubRepo=LiveSatomi/jackomueller GithubBranch=master ProjectName=jackomueller
