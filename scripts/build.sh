#!/bin/sh

cached_work_dir=$(pwd)
cd ./modules/COMPANION/assets
dot -Tsvg ./dot/atls_xabcde_algorithm.dot -o ./images/xabcde/atls.svg
cd $cached_work_dir

npx antora antora-playbook.yml
