build:
	docker build -t github.com/hsmtkk/curly-giggle .

run:
	docker run --rm github.com/hsmtkk/curly-giggle

login:
	aws ecr get-login-password --region ap-northeast-1 | docker login --username AWS --password-stdin 384447982274.dkr.ecr.ap-northeast-1.amazonaws.com

tag:
	docker tag github.com/hsmtkk/curly-giggle:latest 384447982274.dkr.ecr.ap-northeast-1.amazonaws.com/curly-giggle:latest

push:
	docker push 384447982274.dkr.ecr.ap-northeast-1.amazonaws.com/curly-giggle:latest

