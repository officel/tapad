
docker run -it --rm -v `pwd`:/home officel/tapad /bin/sh -c "cd ansible ; packer validate -var-file=packer/vars_ddagent.json packer/packer.json"

docker run -it --rm -v `pwd`:/home -e AWS_ACCESS_KEY_ID -e AWS_SECRET_ACCESS_KEY -e AWS_REGION  officel/tapad /bin/sh -c "aws s3 ls"

docker run --rm -v `pwd`:/home -e AWS_ACCESS_KEY_ID -e AWS_SECRET_ACCESS_KEY -e AWS_REGION -e TF_VAR_datadog_api_key -e TF_VAR_datadog_app_key  officel/tapad /bin/sh -c "cd terraform/all/110_dns ; terraform plan"

