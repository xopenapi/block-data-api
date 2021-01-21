#!/bin/sh
docker run --rm -v "${PWD}:/local" xopenapi/openapi-generator-cli:latest generate \
	--auth signature \
	--group-id com.xopenapi \
	--artifact-id block-data-api-java \
	-i /local/openapi.yaml \
	--git-repo-id block-data-api-java \
	--git-user-id xopenapi \
	--api-package com.xopenapi.blockData \
	--model-package com.xopenapi.blockData.model \
	-g java \
	-o /local/out/block-data-api-java
