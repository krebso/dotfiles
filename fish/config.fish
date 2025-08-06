if [ -f '/Users/krebso/dev/kiwi/utils/google-cloud-sdk/path.fish.inc' ]; . '/Users/krebso/dev/kiwi/utils/google-cloud-sdk/path.fish.inc'; end
alias p="python3"
source /opt/homebrew/opt/modules/init/fish
set -x MODULEPATH /usr/local/modulefiles $MODULEPATH
alias p="python3"
alias aisa="ssh xkrebs@aisa.fi.muni.cz"
alias vim="nvim"

export CLICOLOR=1
export PS1='\[\e[33m\]\w\[\e[0m\]\$ '
export EDITOR='nvim'
export PYPI_USERNAME='martin.krebs'
export PYPI_PASSWORD='/:U+@*yu8KxD/7{#'
export POETRY_HOME="~/.config/poetry"
export DOTNET_ROOT="/usr/local/share/dotnet"
export GOPATH="$HOME/go/bin"
export GCLOUD="$HOME/google-cloud-sdk/bin"
export ZIG="$HOME/.zig"

# PATH
export PATH="/opt/homebrew/bin:$PATH/"
export PATH="/usr/local/bin:$PATH"
export PATH="$POETRY_HOME/bin:$PATH"
export PATH="~/kiwi/utils/google-cloud-sdk/bin:$PATH"
export PATH="/usr/X11/bin:$PATH"
export PATH="/Users/krebso/.config/poetry/bin:$PATH"
export PATH="$DOTNET_ROOT:$PATH"
export PATH="$GOPATH:$PATH"
export PATH="$GCLOUD:$PATH"
export PATH="$ZIG:$PATH"

export LDFLAGS="-L/opt/homebrew/opt/libomp/lib"
export CPPFLAGS="-I/opt/homebrew/opt/libomp/include"
pyenv init - | source
zoxide init fish | source

# The next line updates PATH for the Google Cloud SDK.
if [ -f '/Users/krebso/kiwi/utils/google-cloud-sdk/path.fish.inc' ]; . '/Users/krebso/kiwi/utils/google-cloud-sdk/path.fish.inc'; end

function fish_user_key_bindings
    bind \cl 'clear; commandline -f repaint'
end

function fish_user_key_bindings
    bind \cl 'tput reset; clear; commandline -f repaint'
end

set -l foreground DCD7BA normal
set -l selection 2D4F67 brcyan
set -l comment 727169 brblack
set -l red C34043 red
set -l orange FF9E64 brred
set -l yellow C0A36E yellow
set -l green 76946A green
set -l purple 957FB8 magenta
set -l cyan 7AA89F cyan
set -l pink D27E99 brmagenta

# Syntax Highlighting Colors
set -g fish_color_normal $foreground
set -g fish_color_command $cyan
set -g fish_color_keyword $pink
set -g fish_color_quote $yellow
set -g fish_color_redirection $foreground
set -g fish_color_end $orange
set -g fish_color_error $red
set -g fish_color_param $purple
set -g fish_color_comment $comment
set -g fish_color_selection --background=$selection
set -g fish_color_search_match --background=$selection
set -g fish_color_operator $green
set -g fish_color_escape $pink
set -g fish_color_autosuggestion $comment

# Completion Pager Colors
set -g fish_pager_color_progress $comment
set -g fish_pager_color_prefix $cyan
set -g fish_pager_color_completion $foreground
set -g fish_pager_color_description $comment
