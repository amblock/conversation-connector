#!/usr/bin/env bash

PACKAGE_NAME="$1_starter-code"

bx wsk action delete ${PACKAGE_NAME}/integration-pipeline-slack | grep -v 'ok'
bx wsk action delete ${PACKAGE_NAME}/integration-pipeline-slack-with-slack-data | grep -v 'ok'
bx wsk action delete ${PACKAGE_NAME}/integration-pipeline-slack-with-generic-data | grep -v 'ok'

bx wsk action delete ${PACKAGE_NAME}/integration-pipeline-facebook | grep -v 'ok'
bx wsk action delete ${PACKAGE_NAME}/integration-pipeline-facebook-with-facebook-data | grep -v 'ok'
bx wsk action delete ${PACKAGE_NAME}/integration-pipeline-facebook-with-generic-data | grep -v 'ok'

bx wsk action delete ${PACKAGE_NAME}/mock-conversation-text | grep -v 'ok'
bx wsk action delete ${PACKAGE_NAME}/mock-conversation-slack-data | grep -v 'ok'
bx wsk action delete ${PACKAGE_NAME}/mock-conversation-generic-data | grep -v 'ok'
bx wsk action delete ${PACKAGE_NAME}/mock-conversation-facebook-data | grep -v 'ok'
