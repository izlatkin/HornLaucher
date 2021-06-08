#/bin/bash
export REPO_PATH=/Users/ilyazlatkin/Documents/FG/seahorn_sandbox/slack_files
export SEAHOR_BIN=/Users/ilyazlatkin/CLionProjects/seahorn/build/run/bin

${SEAHOR_BIN}/sea smt --step=flarge ${REPO_PATH}/array_list_copy_loop.seahorn.c \
-o ${REPO_PATH}/array_list_copy_loop.seahorn.smt2
