# dotfiles

## Installation

git clone git@github.com:Tarik-Castro/dotfiles.git

sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

git clone https://github.com/zsh-users/zsh-autosuggestions.git $ZSH_CUSTOM/plugins/zsh-autosuggestions

git clone https://github.com/zsh-users/zsh-syntax-highlighting.git $ZSH_CUSTOM/plugins/zsh-syntax-highlighting

*repository theme goes into the file below*
- vim .oh-my-zsh/custom/cjt.zsh-theme

tmux-mem-cpu-load

cowfortune

- ln -s $HOME/.dotfiles/oh-my-zsh
- ln -s $HOME/.dotfiles/bin $HOME/bin
- ln -s $HOME/.dotfiles/gitconfig $HOME/.gitconfig
- ln -s $HOME/.dotfiles/tmux.conf $HOME/.tmux.conf
- ln -s $HOME/.dotfiles/vim $HOME/.vim
- ln -s $HOME/.dotfiles/vimrc $HOME/.vimrc
- ln -s $HOME/.dotfiles/zsh $HOME/.zsh
- ln -s $HOME/.dotfiles/zshenv $HOME/.zshenv
- ln -s $HOME/.dotfiles/zshrc $HOME/.zshrc
