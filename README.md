# ما بعد تثبيت أرش لينكس

## تحديث النظام:

```bash
sudo pacman -Syu
```

## تثبيت الحزم من المستودعات:

```bash
sudo pacman -S --needed - < pkglist.txt
```
## تثبيت الحزم من Aur:

1- تثبيت Paru
```bash
git clone https://aur.archlinux.org/paru-bin.git

cd paru-bin

makepkg -si
```
2- تثبيت باقي الحزم من Aur:

```bash
paru -S --needed - < aurlist.txt
```
# تثبيت إضافات جنوم:
                                
[Applications Startup Time Measure](https://extensions.gnome.org/extension/5087/startup-measure/)
                                
[Blur my Shell](https://extensions.gnome.org/extension/3193/blur-my-shell/)
                                
[Dash to Dock for COSMIC](https://extensions.gnome.org/extension/5004/dash-to-dock-for-cosmic/)
                                
[Desktop Icons NG (DING)](https://extensions.gnome.org/extension/2087/desktop-icons-ng-ding/)
                                
[Screen word translate](https://extensions.gnome.org/extension/1849/screen-word-translate/)
                                
[Tray Icons: Reloaded](https://extensions.gnome.org/extension/2890/tray-icons-reloaded/)
                                
[Night Theme Switcher](https://extensions.gnome.org/extension/2236/night-theme-switcher/)

[Pop Shell](https://support.system76.com/articles/pop-shell/)                    
```bash
git clone https://github.com/pop-os/shell.git
cd shell
make local-install
```
# إعدادات جنوم
                                
```bash
dconf load / < gnome-desktop
```                                
                                
# إعداد zsh و ohmyzsh:

1- نقل مجلد zsh إلى ~/.config/zsh

```bash
mv zsh $HOME/.config
```

2- تنزيل وتثبيت الخطوط:

```bash
wget https://github.com/romkatv/powerlevel10k-media/raw/master/MesloLGS%20NF%20Regular.ttf https://github.com/romkatv/powerlevel10k-media/raw/master/MesloLGS%20NF%20Bold.ttf https://github.com/romkatv/powerlevel10k-media/raw/master/MesloLGS%20NF%20Italic.ttf https://github.com/romkatv/powerlevel10k-media/raw/master/MesloLGS%20NF%20Bold%20Italic.ttf -P ./MesloLGS-NF
```

```bash
sudo mv MesloLGS-NF /usr/share/fonts
```

4- تغيير مسار zshrc:

```bash
echo 'ZDOTDIR="$HOME/.config/zsh"' | sudo tee -a /etc/zsh/zshenv
```
5- تثبيت [ohmyzsh](https://github.com/ohmyzsh/ohmyzsh):

```bash
git clone https://github.com/ohmyzsh/ohmyzsh.git ~/.config/zsh/ohmyzsh 
```  

6- تثبيت [Powerlevel10k](https://github.com/romkatv/powerlevel10k) و [Plugins](https://github.com/zsh-users):

```bash  
git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ${ZSH_CUSTOM:-$HOME/.config/zsh/ohmyzsh/custom}/themes/powerlevel10k && git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.config/zsh/ohmyzsh/custom}/plugins/zsh-syntax-highlighting && git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.config/zsh/ohmyzsh/custom}/plugins/zsh-autosuggestions &&   git clone https://github.com/zsh-users/zsh-completions ${ZSH_CUSTOM:-${ZSH:-~/.config/zsh/ohmyzsh}/custom}/plugins/zsh-completions &&  git clone https://github.com/zsh-users/zsh-history-substring-search ${ZSH_CUSTOM:-~/.config/zsh/ohmyzsh/custom}/plugins/zsh-history-substring-search
```  
  
  

5- تعيين zsh كشل افتراضي:

* بالنسبة للمستخدم الجذر:

```bash
sudo -s
```

```bash
chsh -s /bin/zsh root
```

```bash
exit
```

* بالنسبة للمستخدم:

```bash
chsh -s /bin/zsh $USER
```



