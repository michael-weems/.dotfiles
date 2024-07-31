export XDG_CONFIG_HOME=$HOME/.config
VIM="nvim"

export DOTFILES=$HOME/.dotfiles
export GIT_EDITOR=$VIM
# NOTE uncomment these when I actually use them
#export CC="clang-12"
#export CXX="clang++-12"
#export GOPATH=$HOME/go

# Where should I put you?
bind '"\C-f": "tmux-sessionizer\n"'

if [ -f ~/.bashrc ];
then 
    .  ~/.bashrc; 
fi 

PATH=$PATH:$HOME/bin 
PATH=$DOTFILES:$PATH
PATH=".local/bin:$PATH"
PATH=".local/scripts:$PATH"
export PATH

