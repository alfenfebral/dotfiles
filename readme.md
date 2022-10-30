# Jon's Dotfiles

This repo contains all of the configs that Jon uses on his machine, feel free to use or add contributions, Jon's machine specifications:

```
             /////////////                neo@neo-linux 
         /////////////////////            ------------- 
      ///////*767////////////////         OS: Pop!_OS 22.04 LTS x86_64 
    //////7676767676*//////////////       Host: ASUS TUF Dash F15 FX516PM_FX516PM 1.0 
   /////76767//7676767//////////////      Kernel: 5.19.0-76051900-generic 
  /////767676///*76767///////////////     Uptime: -
 ///////767676///76767.///7676*///////    Packages: 2875 (dpkg), 30 (flatpak), 3 (snap) 
/////////767676//76767///767676////////   Shell: zsh 5.8.1 
//////////76767676767////76767/////////   Resolution: 1920x1080 
///////////76767676//////7676//////////   DE: Regolith 
////////////,7676,///////767///////////   WM: i3 
/////////////*7676///////76////////////   Theme: Dracula-alt-style [GTK2/3] 
///////////////7676////////////////////   Icons: Adwaita [GTK2/3] 
 ///////////////7676///767////////////    Terminal: tmux 
  //////////////////////'////////////     CPU: 11th Gen Intel i7-11370H (8) @ 4.800GHz 
   //////.7676767676767676767,//////      GPU: Intel TigerLake-LP GT2 [Iris Xe Graphics] 
    /////767676767676767676767/////       GPU: NVIDIA GeForce RTX 3060 Mobile / Max-Q 
      ///////////////////////////         Memory: 4662MiB / 15679MiB 
         /////////////////////
             /////////////                                        
                                                                  
``` 

## TODO
- [ ] GPU passthrough QEMU/KVM installation
- [ ] libvirt(virsh) settings, VM tunning
- [ ] Looking Glass installation

## Preparation

### Xclip (clipboard) 
#### Install
```
sudo apt-get update
sudo apt-get install xclip
```
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
#### LSP 
[Server Configurations](https://github.com/neovim/nvim-lspconfig/blob/master/doc/server_configurations.md)

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

