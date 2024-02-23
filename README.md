```shell
ln -s ~/dotfiles/.bash_profile ~/.bash_profile
ln -s ~/dotfiles/.zshrc ~/.zshrc
ln -s ~/dotfiles/.bash_profile ~/.bash_profile
ln -s ~/dotfiles/.config/lsd ~/.config/lsd 
ln -s ~/dotfiles/.gnupg ~/.gnupg 
```

```shell
# for flutter
sudo softwareupdate --install-rosetta --agree-to-license
yes | flutter doctor --android-licenses

# for Xcode
sudo xcode-select --switch /Applications/Xcode.app/Contents/Developer
sudo xcodebuild -runFirstLaunch

## Unable to get list of installed Simulator runtimes. 오류 문구가 보이면 아래 실행
xcodebuild -downloadPlatform iOS
```
