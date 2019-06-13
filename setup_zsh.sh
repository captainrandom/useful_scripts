git clone https://github.com/powerline/fonts.git
find fonts | grep "\.ttf\|otf$" | xargs -I {} cp {} /Library/Fonts
rm -rf fonts

# also download the color schemes
git clone https://github.com/mbadolato/iTerm2-Color-Schemes.git

git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions

brew install zsh-syntax-highlighting
