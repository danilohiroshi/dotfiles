## Install git
```basg
sudo apt install git
git config --global  user.email "example@example.com"
git config --global  user.name "Example"
git config --global credential.helper "cache --timeout=43200"
```

## Install Neovim

```bash
sudo add-apt-repository ppa:neovim-ppa/stable
sudo apt-get update
sudo apt-get install neovim
```

## Clone setup

```
mkdir ~/.config/nvim
git clone https://github.com/danilohiroshi/neovim.git ~/.config/nvim
```

## Install dependencies
- Install ripgrep
```
cd Downloads
RIPGREP_VERSION=$(curl -s "https://api.github.com/repos/BurntSushi/ripgrep/releases/latest" | grep -Po '"tag_name": "\K[0-9.]+')
curl -Lo ripgrep.deb "https://github.com/BurntSushi/ripgrep/releases/latest/download/ripgrep_${RIPGREP_VERSION}_amd64.deb"
sudo apt install -y ./ripgrep.deb
rg --version
```

## Install build-essential
```
sudo apt install build-essential
```

## Install fonts
- Font: https://www.nerdfonts.com/cheat-sheet
```
mkdir -p ~/.local/share/fonts
cp ~/.config/nvim/fonts/*.ttf ~/.local/share/fonts
```

## Install ZSH
```
sudo apt install zsh -y
```
- In ~/.bashrc, add "exec zsh"

## Install Oh-my-zsh
- https://ohmyz.sh/#install
- Copy config
```
cp ~/.config/nvim/zsh/.zshrc ~/
```

## Install xclip
- Only if using X11
```
sudo apt install xclip
```

## Install php
- https://www.php.net/downloads
- Install php-curl ```sudo apt install php-curl```

## Install composer
- https://getcomposer.org/download/
- In ~/.bashrc add ```export PATH="$HOME/.config/composer/vendor/bin:$PATH"```

## Install nvm, node and language servers
- https://github.com/nvm-sh/nvm

## Install Linters
- jshint: ```npm install -g jshint```
- prettier: ```npm install -g prettier```
- phpcs, Drupal: https://www.drupal.org/docs/contributed-modules/code-review-module/installing-coder-sniffer
- Supported linters: https://github.com/jose-elias-alvarez/null-ls.nvim/tree/main/lua/null-ls/builtins/diagnostics
- To install more linters, install the linter globally and add it in the config file "plugin/nullls.lua"

## Install Kitty terminal
```bash
sudo apt install kitty
mkdir -p ~/.config/kitty
cp ~/.config/nvim/kitty/* ~/.config/kitty
```

## Install plugins
- Install packer
- https://github.com/wbthomason/packer.nvim#quickstart

```bash
# Open neovim
nvim
:PackerSync
```

## Install language parser
```
:TSInstall php
:TSInstall javascript
:TSInstall typescript
:TSInstall css
:TSInstall yaml
```

## Debuggers
- Enter nvim
- ```:Mason```
- Select "(3) DAP"
- Press "i" to install a adapter

# Install LSP clients
- Enter nvim
- ```:Mason```
- Select "(2) LSP"
- Press "i" to install the clients
- PHP: intelephense
- Typescript: typescript-language-server