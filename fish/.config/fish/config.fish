set -gx EDITOR nvim

if status is-interactive
    # Commands to run in interactive sessions can go here
end

function fish_right_prompt
    #intentionally left blank
end

# vim keybindings
fish_vi_key_bindings

#alias
alias src='source ~/.config/fish/config.fish'
alias su='sudo dnf5 upgrade --refresh --best --allowerasing -y && flatpak update -y'
alias si='sudo dnf5 install'
alias sf='dnf search'
alias sr='sudo dnf5 remove'
alias t='tmux'
alias h='htop'
alias v='vifm'
alias c='cmus'
alias clean='sudo dnf autoremove && dnf clean all && flatpak uninstall --unused -y && flatpak remove --delete-data && sudo journalctl --vacuum-time=2weeks'
alias k='sudo ./kmonad ~/.config/kmonad/config.kbd'
alias b='btop'
alias lg='lazygit'
alias up='cd ..'
alias wq='exit'
alias home='cd ~/'
alias ls='ls --color=auto --group-directories-first -la'
alias n='nvim'
alias pbcopy='xsel --input --clipboard'
alias pbpaste='xsel --output --clipboard'
alias size='du -h --max-depth=1 | sort -rh'
alias z='zathura'

# starship
starship init fish | source

#fzf
alias vf='nvim $(fzf)'


#yt-dlp
alias ytv='yt-dlp -f "bv*[height=1080]+ba"'
alias yta='yt-dlp -f ba -x --audio-format mp3'

#mpv
alias mnc='mpv --cache=no'

#abbreviations
abbr gco 'git checkout'
abbr gct 'git commit -m'
abbr gpl 'git pull origin'
abbr gps 'git push'
abbr gss 'git status'
abbr fd 'cd "$(fd --type d --hidden --follow | fzf)"'

#fzf integration (keybindings)
fzf --fish | source

# The next line updates PATH for the Google Cloud SDK.
if [ -f '/home/lucia/Yura/google-cloud/google-cloud-sdk/path.fish.inc' ]
    . '/home/lucia/Yura/google-cloud/google-cloud-sdk/path.fish.inc'
end

# Enable AWS CLI autocompletion: github.com/aws/aws-cli/issues/1079
complete --command aws --no-files --arguments '(begin; set --local --export COMP_SHELL fish; set --local --export COMP_LINE (commandline); aws_completer | sed \'s/ $//\'; end)'

# Added by LM Studio CLI (lms)
set -gx PATH $PATH /home/lucia/.lmstudio/bin
