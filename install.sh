#!/bin/bash
#
# Install SublimeText package dependencies and keyboard improvements for MacOS

set -euf -o pipefail

# Go package dependencies
go get -u golang.org/x/tools/cmd/goimports
go get -u golang.org/x/tools/cmd/godoc
go get -u golang.org/x/lint/golint
GO111MODULE=on go get golang.org/x/tools/gopls@latest

# Rust packages specific to LSP
rustup update
rustup component add rls rust-analysis rust-src

# Darwin = MacOS
if [ "$(uname)" == "Darwin" ]; then
  # Disable press and hold character variations
  defaults write com.sublimetext.2 ApplePressAndHoldEnabled -bool false

  # default 15 (225 ms)
  defaults write -g InitialKeyRepeat -int 10

  # default 2 (30 ms)
  defaults write -g KeyRepeat -int 1

  # Setup shellcheck
  brew install shellcheck

  # LSP for C/C++
  brew install llvm

  # If Mac OS X run (todo:brandon) add OS X version check before running open
  open /Library/Developer/CommandLineTools/Packages/macOS_SDK_headers_for_macOS_10.14.pkg
fi
