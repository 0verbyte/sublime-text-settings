# Sublime Text Configurations

Clone this repo into `~/Library/Application Support/Sublime Text 3/Packages/User` and restart Sublime Text.

Install the following tools for Go.

```
go get -u golang.org/x/tools/cmd/goimports
go get -u golang.org/x/tools/cmd/godoc
go get -u golang.org/x/lint/golint
```

[GoSublime](https://github.com/DisposaBoy/GoSublime)
[GoCode](https://github.com/mdempsky/gocode)

## OS X
Disable press and hold character variations to enable key repeat. Enter this into your terminal:

```
defaults write com.sublimetext.2 ApplePressAndHoldEnabled -bool false
```

It might also be helpful to increase the KeyRepeat speed. Enter this into your terminal:
```
defaults write -g InitialKeyRepeat -int 10 # normal minimum is 15 (225 ms)
defaults write -g KeyRepeat -int 1 # normal minimum is 2 (30 ms)
```

>**Note:** Changes aren't applied until you log out and back in.
