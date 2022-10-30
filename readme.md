## Preparation

### Font Fira Code
#### Install
```
wget https://github.com/tonsky/FiraCode/releases/download/6.2/Fira_Code_v6.2.zip
unzip Fira_Code_v6.2.zip .
```

### Nvchad (NVIM)
```
git clone https://github.com/NvChad/NvChad ~/.config/nvim 
git checkout -b dc669313c1e3e4348c65d622734e57d7459b6f83
```

### ZSH
#### Install
```
sudo apt install zsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
```
#### Auto Sugestion
```
git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions
```
Provide ~./.zshrc_secret (if any)

### TMUX
#### Install
```
sudo apt install tmux
```
#### TPM
```
git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm
```
#### Install Plugins
```
tmux
```
PREFIX + I (i capital)

### Regolith (i3 Tiling Window Manager) (Ubuntu 22.04)
#### Install
```
wget -qO - https://regolith-desktop.org/regolith.key | \
gpg --dearmor | sudo tee /usr/share/keyrings/regolith-archive-keyring.gpg > /dev/null

echo deb "[arch=amd64 signed-by=/usr/share/keyrings/regolith-archive-keyring.gpg] \
https://regolith-desktop.org/release-ubuntu-jammy-amd64 jammy main" | \
sudo tee /etc/apt/sources.list.d/regolith.list

sudo apt update

sudo apt install regolith-desktop
```
#### Theme Blackhole
```
sudo apt install regolith-look-blackhole
sudo regolith-look set blackhole
```
#### Status Bar 
```
sudo apt install i3xrocks-bluetooth
sudo apt install i3xrocks-volume
```

### Rofi (App Launcher)
#### Install
```
apt-get install rofi
```


## Inject config
```
chmod +x ./install_config.sh
./install_config.sh
```
