#!/bin/sh
docker run --rm -v "${PWD}:/local" xopenapi/openapi-generator-cli:latest generate \
	--auth signature \
	-i /local/openapi.yaml \
	-g go \
	--package-name=blockData \
	--git-host=github.com \
	--git-repo-id=block-data-api-go \
	--git-user-id=xopenapi \
	-o /local/out/block-data-api-go
