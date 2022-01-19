#!/bin/sh

# Clone documentation repository
git clone https://github.com/Opencast-Moodle/documentation

# Get target repository
git clone https://github.com/Opencast-Moodle/documentation.git
cd Opencast-Moodle.github.io

# Build and deploy docs
python -m mkdocs gh-deploy --config-file ../documentation/mkdocs.yml --remote-branch gh-pages
