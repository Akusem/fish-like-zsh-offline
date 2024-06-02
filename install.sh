PWD=$(pwd)

# Install zsh
apt-get install -y "$PWD"/deps/zsh-packages-ubuntu-22-04/*.deb

# Setup Oh My Zsh
mv "$PWD"/deps/ohmyzsh-master ~/.oh-my-zsh
sh "$PWD"/deps/install-ohmyzsh.sh

# Add extensions
mv "$PWD"/deps/zsh-autosuggestions ~/.oh-my-zsh/custom/plugins/zsh-autosuggestions
mv "$PWD"/deps/zsh-syntax-highlighting ~/.oh-my-zsh/custom/plugins/zsh-syntax-highlighting
mv "$PWD"/deps/ultima-shell/ultima.zsh-theme ~/.oh-my-zsh/themes/ultima.zsh-theme
mv "$PWD"/deps/headline/headline.zsh-theme ~/.oh-my-zsh/custom/themes/headline.zsh-theme

# Activate extension
sed -i -e 's/plugins=(git)/plugins=(git zsh-autosuggestions history-substring-search zsh-syntax-highlighting)/' ~/.zshrc
sed -i -e 's/ZSH_THEME="robbyrussell"/ZSH_THEME="headline"/' ~/.zshrc

