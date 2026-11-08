zstyle ':completion:*' matcher-list '' 'm:{a-zA-Z}={A-Za-z}'
zstyle ':completion:*' menu list
zstyle ':completion:*' group-name ''
zstyle ':completion:*' list-colors ${(s.:.)LS_COLORS}

# plugins zsh
source /usr/share/zsh/plugins/zsh-autosuggestions/zsh-autosuggestions.zsh
source /usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

# history
HISTFILE=~/.zsh_history
HISTSIZE=10000
SAVEHIST=10000

# setopt
setopt AUTO_CD
setopt APPEND_HISTORY
setopt HIST_IGNORE_SPACE
setopt HIST_SAVE_NO_DUPS
setopt SHARE_HISTORY
setopt HIST_IGNORE_DUPS

autoload -U compinit; compinit


# aliases 
alias icat="kitty +kitten icat"
alias reload="source ~/.zshrc"
alias update="bash ~/handmade/scripts/mako/update.sh"
alias pi="bash ~/.config/mako/script/install.sh"
alias yi="bash ~/handmade/scripts/mako/yay-install.sh"
alias puns="sudo pacman -Rs"
alias yuns="yay -Rs"
alias locateup="sudo updatedb"
alias qt="bash ~/handmade/scripts/torrent.sh"
alias ezsh="code ~/.zshrc"
alias ehypr="code ~/.config/hypr/hyprland.conf"
alias ytv="bash ~/handmade/scripts/ytvlc.sh"
alias ls="eza -lh --icons --git"
alias cat="bat"
alias mod="chmod +x"
alias play="bash ~/.config/mpv/user-scripts/playlist.sh"
alias disk="bash ~/.config/hypr/scripts/lsblk.sh"
alias ydl="bash ~/Scripts/yt-dlp/ydl.sh"
alias aa="source ~/python/bin/activate"
alias tt="bash ~/Scripts/aria2/torrent.sh"
alias ai="brave --app-id=cadlkienfkclaiaibeoongdcgmdikeeg & disown"
alias prop="hyprctl clients -j | jq '.[0]'"

# aliases Game
alias factorio="wineprefix=~/games wine ~/games/Factorio.v2.0.76/Factorio/bin/x64/factorio.exe"
alias oxy="WINEPREFIX=~/games wine ~/games/drive_c/Games/OxygenNotIncluded/OxygenNotIncluded.exe"
alias 7="wineprefix=~/games wine ~/Downloads/7.Days.to.Die.v3.1.0/game/7DaysToDie.exe"
alias rail="wineprefix=~/games wine ~/Downloads/Compressed/OxyRail/game/Oxygen\ Train.exe"

eval "$(starship init zsh)"
eval "$(zoxide init zsh)"

# yazi Shell wrapper
function y() {
	local tmp="$(mktemp -t "yazi-cwd.XXXXXX")" cwd
	command yazi "$@" --cwd-file="$tmp"
	IFS= read -r -d '' cwd < "$tmp"
	[ "$cwd" != "$PWD" ] && [ -d "$cwd" ] && builtin cd -- "$cwd"
	command rm -f -- "$tmp"
}


