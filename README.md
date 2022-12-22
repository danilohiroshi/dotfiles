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

## Install fonts
```
cd ~/.config/nvim
mkdir -p ~/.local/share/fonts
cp fonts/*.ttf ~/.local/share/fonts
```
## Install php
- https://www.php.net/downloads

## Install nvm, node and language servers
- https://github.com/nvm-sh/nvm
- install typescript server ```nvm exec 14 npm install -g typescript typescript-language-server```
- install intelephense ```nvm exec 14 npm install -g intelephense```

## Install Kitty terminal
```bash
sudo apt install kitty
mkdir -p ~/.config/kitty
cp kitty/* ~/.config/kitty
```

## Install plugins
- Install packer
- https://github.com/wbthomason/packer.nvim#quickstart

```bash
# Open neovim
nvim
:PackerSync
```

## Install LSP

```bash
# Open neovim in a php
:LspInstall intelephense
:LspInstall typescript
# option: tsserver
```
