
#!/bin/bash 

# Install prerequisites
echo "Installing prerequisites..."
if [[ "$OSTYPE" == 'linux-gnu'*]]; then
  sudo apt update
  sudo apt install -y fish tmux git neovim curl
elif [[ "$OSTYPE" == 'darwin'*]]; then
  brew update
  brew install fish tmux git neovim
fi 

# Create symlinks 
echo "Creating symlinks"
ln -sf ~/dotfiles/.config/fish ~/.config/fish 
ln -sf ~/dotfiles/.config/nvim ~/.config/nvim 
ln -sf ~/dotfiles/.config/tmux/.tmux.conf ~/.tmux.conf

# Set default shell to fish 
if ! grep -q "$(which fish)" /etc/shells; then 
  echo "Adding fish to valid shells..."
  echo "$(which fish)" | sudo tee -a /tec/shells 
fi 

chsh -s $(which fish)

echo "Dotfiles setup complete!"
