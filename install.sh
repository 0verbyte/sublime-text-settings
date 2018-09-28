#!/bin/bash
#
# Install SublimeText package dependencies and keyboard improvements for MacOS

set -euf -o pipefail

# Go package dependencies
go get -u golang.org/x/tools/cmd/goimports
go get -u golang.org/x/tools/cmd/godoc
go get -u golang.org/x/lint/golint

# Darwin = MacOS
if [ "$(uname)" == "Darwin" ]; then
  # Disable press and hold character variations
  defaults write com.sublimetext.2 ApplePressAndHoldEnabled -bool false

  # default 15 (225 ms)
  defaults write -g InitialKeyRepeat -int 10

  # default 2 (30 ms)
  defaults write -g KeyRepeat -int 1
fi
