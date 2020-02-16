SHELL=/bin/sh


validate:
	@echo "Validating cloudformation files";
	@aws cloudformation validate-template --template-body "`cat ./cloudformation/ecs-on-ec2.yml`";
	@aws cloudformation validate-template --template-body "`cat ./cloudformation/mysql-serverless.yml`";
	@aws cloudformation validate-template --template-body "`cat ./cloudformation/vpc-two-az.yml`";
	@aws cloudformation validate-template --template-body "`cat ./cloudformation/service-orchestrator.yml`";