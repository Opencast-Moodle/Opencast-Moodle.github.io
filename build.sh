#!/bin/sh

# Prepare Github SSH key
echo "${DEPLOY_KEY}" > ~/.ssh/id_rsa
chmod 600 ~/.ssh/id_rsa
ssh-keyscan github.com >> ~/.ssh/known_hosts

# Clone documentation repository
git clone https://github.com/Opencast-Moodle/documentation

# Get target repository
git clone git@github.com:Opencast-Moodle/Opencast-Moodle.github.io.git
cd Opencast-Moodle.github.io

# Build and deploy docs
python -m mkdocs gh-deploy --config-file ../documentation/mkdocs.yml --remote-branch gh-pages
