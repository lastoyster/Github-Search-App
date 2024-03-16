# Makefile for deploying the Flutter web projects to GitHub

BASE_HREF = /$(OUTPUT)/
# Replace this with your GitHub username
GITHUB_USER = lastoyster
GITHUB_REPO = https://github.com/$(lastoyster)/$(OUTPUT)
BUILD_VERSION := $(shell grep 'version:' pubspec.yaml | awk '{print $$2}')

# Deploy the Flutter web project to GitHub
deploy:
ifndef OUTPUT
  $(error OUTPUT is not set. Usage: make deploy OUTPUT=<lastoyste.github.io>)
endif

  