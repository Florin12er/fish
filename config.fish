# Set environment variables
set -gx EDITOR 'nvim'
set -gx BROWSER 'brave'
set -gx HISTORY_IGNORE "(ls|cd|pwd|exit|sudo reboot|history|cd -|cd ..)"

# Add ~/.local/bin to PATH if it exists
if test -d "$HOME/.local/bin"
    set -gx PATH "$HOME/.local/bin" $PATH
end

# Set history file and size
set -gx fish_history_file ~/.config/zsh/zhistory
set -gx fish_history_max_lines 5000

starship init fish | source

# # Define prompt function
# function fish_prompt
#     set_color blue
#     echo -n "  "
#     set_color magenta
#     echo -n (whoami)
#     set_color cyan
#     if test "$PWD" = "$HOME"
#         echo -n " "
#     else
#         echo -n " "
#     end
#     set_color red
#     echo -n (prompt_pwd)
#     set_color normal
#     if test $status -eq 0
#         set_color green
#     else
#         set_color red
#     end
#     echo -n " "
#     set_color normal
# end

# Aliases
alias mirrors="sudo reflector --verbose --latest 5 --country 'United States' --age 6 --sort rate --save /etc/pacman.d/mirrorlist"
alias neofetch="fastfetch"
alias add="git add"
alias cd="z"
alias commit="git commit"
alias note="nb"
alias push="git push"
alias pull="git pull"
alias cl="clear"
alias config="git config"
alias remote="git remote add origin"
alias size="ls -lh --blocks=size"
alias grub-update="sudo grub-mkconfig -o /boot/grub/grub.cfg"
alias mantenimiento="yay -Sc && sudo pacman -Scc"
alias purga="sudo pacman -Rns (pacman -Qtdq)"
alias update="paru -Syu"
alias matrix="cmatrix -u 9"
alias vm-on="sudo systemctl start libvirtd.service"
alias gorun="fresh"
alias vm-off="sudo systemctl stop libvirtd.service"
alias sound="alsamixer"
alias memory="sudo dust"
alias tree='tree -a -I .git'
alias lazy="lazygit"
alias vim="nvim"
alias vm="nvim"
alias vi="/usr/bin/vim"
alias ivm="nvim"
alias nano="nvim"
alias cat="bat"
alias h="tldr"
alias file="dolphin"
alias ls='lsd -a --group-directories-first'
alias ll='lsd -la --group-directories-first'
alias flutter=/home/florin/development/flutter/bin/flutter

# Set environment variables
set -gx JAVA_HOME /usr/lib/jvm/default
set -gx PATH $PATH (ruby -e 'print Gem.user_dir')/bin
set -gx PATH $HOME/.config/emacs/bin $PATH
set -gx GEM_HOME $HOME/.gem
set -gx GEM_PATH $HOME/.gem
set -gx PATH $HOME/.gem/ruby/3.0.0/bin $PATH
set -gx PATH $HOME/.gem/bin $PATH
set -gx PATH $PATH $JAVA_HOME/bin
set -gx PATH $PATH $HOME/.cargo/bin
set -gx PATH $PATH /usr/local/go/bin $HOME/go/bin
set -gx PATH $PATH /home/florin/RandomYoutubeUrl
set -gx PATH $PATH /usr/bin/golangci-lint
set -gx PATH $PATH /home/florin/.dotnet/tools/csharp-ls
set -gx PATH $PATH /home/florin/.dotnet/tools
set -gx PATH $PATH /home/florin/.dotnet/tools/dotnet-csharpier
set -gx PATH $PATH /usr/bin/csharp-ls
set -gx PATH $PATH /usr/share/dotnet
set -gx PATH $PATH /usr/bin/mono
set -gx PATH $HOME/.tmuxifier/bin $PATH
set -gx PATH $PATH ~/go/bin
set -gx DOTNET_ROOT $HOME/.dotnet
set -gx PATH /usr/bin $PATH
set -gx PATH $PATH /opt/flutter/bin
set -gx PATH $HOME/bin $PATH
set -gx PATH $PATH /usr/bin
set -gx PATH $PATH /usr/local/bin
set -gx PATH $PATH /var/lib/snapd/snap/bin
set -gx DICTIONARY en_US
set -gx BUN_INSTALL $HOME/.bun
set -gx PATH $BUN_INSTALL/bin $PATH
set -gx CXX g++


# Load RVM if it exists
if test -s "$HOME/.rvm/scripts/rvm"
    bass source "$HOME/.rvm/scripts/rvm"
end

# Initialize rbenv
if command -v rbenv > /dev/null
    status --is-interactive; and rbenv init - | source
end

# Initialize atuin
if command -v atuin > /dev/null
    atuin init fish | source
end

set -g fish_greeting ""
zoxide init fish | source
atuin init fish --disable-up-arrow | source
