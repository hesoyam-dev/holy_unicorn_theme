read -r -p "Have you installed zsh yet?[y/n]" confirmation
if [ "$confirmation" != y ] && [ "$confirmation" != Y ]; then
  echo "Installing zsh via homebrew"
  brew install zsh
  echo "Successfully install zsh"
fi

read -r -p "Have you installed oh-my-zsh yet?[y/n]" ozsh_confirmation
if [ "$ozsh_confirmation" != Y ] && [ "$ozsh_confirmation" != y ]; then
  echo "Installing oh-my-zsh..."
  curl -L https://github.com/robbyrussell/oh-my-zsh/raw/master/tools/install.sh | sh
  echo "Setting zsh to default shell"
  chsh -s /usr/local/bin/zsh
fi
echo "Copying unicorn theme to your custom themes..."
cp holy_unicorn.zsh-theme ~/.oh-my-zsh/themes/

echo "Searching your default theme and changing with holy unicorn theme"
sed -i "" 's/robbyrussell/holy_unicorn/g' ~/.zshrc
