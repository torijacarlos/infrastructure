SHELL=/bin/sh


validate:
	@echo "Validating cloudformation files";
	@aws cloudformation validate-template --template-body "`cat ./stacks/ecs-on-ec2.yml`";
	@aws cloudformation validate-template --template-body "`cat ./stacks/mysql-serverless.yml`";
	@aws cloudformation validate-template --template-body "`cat ./stacks/vpc-two-az.yml`";
	@aws cloudformation validate-template --template-body "`cat ./stacks/service-orchestrator.yml`";