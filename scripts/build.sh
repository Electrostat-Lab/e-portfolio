#!/bin/sh

cached_work_dir=$(pwd)
cd ./modules/COMPANION/assets
dot -Tsvg ./dot/atls_xabcde_algorithm.dot -o ./images/xabcde/atls.svg
dot -Tsvg ./dot/medical_listening.dot -o ./images/medical-listening.svg
dot -Tsvg ./dot/medical_writing.dot -o ./images/medical-writing.svg

cd $cached_work_dir

cd ./modules/CASES/assets/attachments
pdflatex ./cerebral_autoregulation.tex 

inkscape ./cerebral_autoregulation.pdf \
  --export-type=svg \
  --export-background=white \
  --export-background-opacity=1 \
  --export-filename=cerebral_autoregulation.svg

cd $cached_work_dir

npx antora antora-playbook.yml
