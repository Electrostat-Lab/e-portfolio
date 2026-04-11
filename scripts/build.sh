#!/bin/sh

cached_work_dir=$(pwd)
cd ./modules/COMPANION/assets
dot -Tsvg ./dot/atls_xabcde_algorithm.dot -o ./images/xabcde/atls.svg
dot -Tsvg ./dot/medical_listening.dot -o ./images/medical-listening.svg
dot -Tsvg ./dot/medical_writing.dot -o ./images/medical-writing.svg
cd $cached_work_dir

npx antora antora-playbook.yml
