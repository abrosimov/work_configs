autoload -U compinit
compinit

# {{{ Устанавливаем необходимые переменные окружения.
export PATH=$HOME/bin:$HOME/.config/composer/vendor/bin:/opt/phpstorm/bin:/opt/qt4/bin:$PATH:/sbin:/usr/sbin:/usr/local/sbin:/opt/go/bin
#export MANPATH=/usr/local/man:/usr/man:/usr/lib/java/man:/usr/lib/java/man:/usr/share/texmf/man:/usr/local/share/man
export LD_PATH=/opt/qt4/lib:$LD_PATH

export EDITOR='/usr/bin/vim'
export VISUAL=$EDITOR
export PAGER=/usr/bin/less
export BROWSER=/usr/bin/google-chrome
export GREP_COLOR='1;33'
export GOPATH="$HOME/go"
# }}}

# {{{ Настраиваем логгирование вводимых команд и reverse-search.
export HISTFILE=~/.key_history

SAVEHIST=5000
HISTSIZE=5000
DIRSTACKSIZE=20

setopt APPEND_HISTORY
setopt HIST_IGNORE_ALL_DUPS
setopt HIST_IGNORE_SPACE
setopt HIST_REDUCE_BLANKS
# }}}

# {{{
PROMPT="%{$fg_bold[grey]%}[%{$fg_bold[white]%}%~%{$reset_color%}%{$fg_bold[grey]%}]%{$reset_color%}-%{$fg_bold[yellow]%}»%{$reset_color%} "
RPROMPT='%T'
# }}}

# {{{ Автовход в каталог
setopt autocd
# }}}

# {{{ Алиасы для команд
alias -g L='| less'
alias -g G='| grep'
alias -g GI='| grep -i'
alias -g H='| head'
alias -g T='| tail'
alias -g S='| sort'
alias -g SU='|sort -u'
alias -g P='| patch -p1'
alias -g PD='| patch -p1 --dry-run'
alias -g WC='| wc -l'
# Алиасы для нотифаера
alias -g NSC='notify-send -u critical -t 7000'
alias -g NSN='notify-send -u normal'
alias -g NSL='notify-send -u low'

alias grep="grep --color=always -n "
alias pull="git pull -p origin master"
alias push="git push origin"
alias co="git checkout"
alias cob="git checkout -b"
alias merge="git merge"
alias fetch="git fetch origin master:master"
alias branch="git branch"
alias ci="git commit -m"
alias add="git add"
alias st="git status"
alias stash="git stash"
alias gdiff="git diff --color"
alias gmm="git fetch -pn origin master:master; git merge master"
alias d3="ssh www1.d3"
alias d4="ssh www1.d4"
alias msh="ssh shell1.mlan"
alias ush="ssh shell1.ulan"

alias mlog="ssh logs1.mlan"
alias ulog="ssh logs1.ulan"
gg() { git grep -n "$*"; }

alias man="LANG=en_US.UTF-8 LC_ALL=en_US.UTF-8 man"
alias ls="ls --color"
alias cd..="cd .."
alias rm="rm -i"
alias св="cd"
alias ды="ls"
alias :q="exit"
alias :q!="exit"
alias vf="cd"
alias xs="cd"
alias ncmpc="ncmpcpp"
alias df="df -h"
alias s="sudo"
alias du="du -hs"
alias upmpd="mpd --kill && mpd --create-db && kill -9 $!"
alias create_tags="ctags -R --c++-kinds=+p --fields=+iaS --extra=+q --language-force=C++ *"

# маппинги a-la расширение=>программа
alias -s php=php 
alias -s py=python
alias -s c=vim
alias -s cpp=vim
alias -s h=vim
alias -s hpp=vim
alias -s erl=vim
alias -s pl=perl
alias -s tex=vim

alias -s djvu=okular
alias -s pdf=xpdf

alias -s png=gqview
alias -s jpg=gqview
alias -s gif=gqview
alias -s nef=gqview
# }}}

# {{{ Автокорректировка вводимых команд.
# setopt CORRECT_ALL
# SPROMPT="Ошибка! Вы хотели ввести %r вместо %R? ([Y]es/[N]o/[E]dit/[A]bort) "
# }}}

# {{{ Настройка терминала.
case $TERM in
    linux)
        bindkey "^[[2~" yank
        bindkey "^[[3~" delete-char
        bindkey "^[[5~" up-line-or-history
        bindkey "^[[6~" down-line-or-history
        bindkey "^[[1~" beginning-of-line
        bindkey "^[[4~" end-of-line
        bindkey "^[e" expand-cmd-path ## C-e for expanding path of typed command
        bindkey "^[[A" up-line-or-search ## up arrow for back-history-search
        bindkey "^[[B" down-line-or-search ## down arrow for fwd-history-search
        bindkey " " magic-space ## do history expansion on space
        bindkey "^R" history-incremental-search-backward
    ;; 
    *xterm*|*rxvt*|(dt|k|E)term)
        bindkey "^[[2~" yank
        bindkey "^[[3~" delete-char
        bindkey "^[[5~" up-line-or-history
        bindkey "^[[6~" down-line-or-history
        bindkey "^[[7~" beginning-of-line
        bindkey "^[[8~" end-of-line
        bindkey "^[e" expand-cmd-path ## C-e for expanding path of typed command
        bindkey "^[[A" up-line-or-search ## up arrow for back-history-search
        bindkey "^[[B" down-line-or-search ## down arrow for fwd-history-search
        bindkey " " magic-space ## do history expansion on space
        bindkey "^R" history-incremental-search-backward
    ;;
esac
# }}}


# {{{ Window Title
case $TERM in
    *xterm*|rxvt|rxvt-unicode|rxvt-256color|(dt|k|E)term)
		precmd () { print -Pn "\e]0;$TERM\a" } 
		preexec () { print -Pn "\e]0;$1\a" }
	;;
    screen)
    	precmd () { 
        print -Pn "\e]83;title \"$1\"\a" 
        print -Pn "\e]0;$TERM - (%L) [%n@%M]%# [%~]\a" 
      }
      preexec () { 
        print -Pn "\e]83;title \"$1\"\a" 
        print -Pn "\e]0;$TERM - (%L) [%n@%M]%# [%~] ($1)\a" 
      }
	;; 
esac
# }}}

# {{{ Prompt Config
setprompt () {
	# load some modules
	autoload -U colors zsh/terminfo # Used in the colour alias below
	colors
	setopt prompt_subst

    PROMPT="%{$fg_bold[grey]%}[%{$fg_bold[cyan]%}%~%{$reset_color%}%{$fg_bold[grey]%}]%{$reset_color%}-%{$fg_bold[yellow]%}>%{$reset_color%} "
    RPROMPT="%{$fg[cyan]%}%D{%H:%M}%{$reset_color%}"
}
setprompt

# }}}

unarch () {
    local old_dirs current_dirs lower
    lower=${(L)1}
    old_dirs=( *(N/) )
    if [[ $lower == *.tar.gz || $lower == *.tgz ]]; then
        tar xzf $1
    elif [[ $lower == *.gz ]]; then
        gunzip $1
    elif [[ $lower == *.tar.bz2 || $lower == *.tbz ]]; then
        tar xjf $1
    elif [[ $lower == *.bz2 ]]; then
        bunzip2 $1
    elif [[ $lower == *.zip ]]; then
        unzip $1
    elif [[ $lower == *.rar ]]; then
        unrar x $1
    elif [[ $lower == *.tar ]]; then
        tar xf $1
    elif [[ $lower == *.lha ]]; then
        lha e $1
    else
        print "Unknown archive type: $1"
        return 1
    fi
    # Change in to the newly created directory, and
    # list the directory contents, if there is one.
    current_dirs=( *(N/) )
    for i in {1..${#current_dirs}}; do
        if [[ $current_dirs[$i] != $old_dirs[$i] ]]; then
            cd $current_dirs[$i]
            break
        fi
    done
}


# {{{ Completion
# :completion:::::
# Expansion options
zmodload zsh/complist

zstyle ':completion:*' menu yes select
zstyle ':completion:*:default' list-colors ${(s.:.)LS_COLORS}
zstyle ':completion:*:processes' command 'ps xuf'
zstyle ':completion:*:processes' sort false
zstyle ':completion:*:processes-names' command 'ps xho command'

compctl -g '*.pdf' acroread xpdf
compctl -g '*.pdf' xpdf acroread


zstyle ':completion:*' completer _complete _prefix
zstyle ':completion::prefix-1:*' completer _complete
zstyle ':completion:incremental:*' completer _complete _correct
zstyle ':completion:predict:*' completer _complete

# Expand partial paths
zstyle ':completion:*' expand 'yes'
zstyle ':completion:*' squeeze-slashes 'yes'

# Separate matches into groups
zstyle ':completion:*:matches' group 'yes'

# Describe each match group.
zstyle ':completion:*:descriptions' format "%B---- %d%b"

# Messages/warnings format
zstyle ':completion:*:messages' format '%B%U---- %d%u%b' 
zstyle ':completion:*:warnings' format '%B%U---- no match for: %d%u%b'
 
# Describe options in full
zstyle ':completion:*:options' description 'yes'
zstyle ':completion:*:options' auto-description '%d'
# }}}

# {{{ Colored less
export LESS_TERMCAP_mb=$'\E[01;31m'
export LESS_TERMCAP_md=$'\E[01;31m'
export LESS_TERMCAP_me=$'\E[0m'
export LESS_TERMCAP_se=$'\E[0m'
export LESS_TERMCAP_so=$'\E[01;44;33m'
export LESS_TERMCAP_ue=$'\E[0m'
export LESS_TERMCAP_us=$'\E[01;32m'
export GDK_USE_XFT=1
export QT_XFT=true
# }}}

translate() {
wget -qO- "http://ajax.googleapis.com/ajax/services/language/translate?v=1.0&q=$1&langpair=${2:-en}|${3:-ru}" | sed -E -n 's/[[:alnum:]": {}]+"translatedText":"([^"]+)".*/\1/p';
echo ''
return 0;
}
autoload -Uz vcs_info
 
zstyle ':vcs_info:*' stagedstr '%F{28}●'
zstyle ':vcs_info:*' unstagedstr '%F{11}●'
zstyle ':vcs_info:*' check-for-changes true
zstyle ':vcs_info:(sv[nk]|bzr):*' branchformat '%b%F{1}:%F{11}%r'
zstyle ':vcs_info:*' enable git svn
precmd () {
    if [[ -z $(git ls-files --other --exclude-standard 2> /dev/null) ]] {
        zstyle ':vcs_info:*' formats ' [%F{green}%b%c%u%F{blue}]'
    } else {
        zstyle ':vcs_info:*' formats ' [%F{green}%b%c%u%F{red}●%F{blue}]'
    }
 
    vcs_info
}
 
setopt prompt_subst
#PROMPT='%F{$fg_bold[grey]%}%n@%m %F{blue}%c${vcs_info_msg_0_}%F{blue} %(?/%F{yellow}/%F{red})%{$reset_color%}-%{$fg_bold[yellow]%}>%{$reset_color%} '
#PROMPT='%F{grey}%n@%m %c${vcs_info_msg_0_}%F{cyan} %(?/%F{grey}/%F{red})%% %{$reset_color%}'
#PROMPT="%{$fg_bold[grey]%}[%{$fg_bold[cyan]%}%~%{$reset_color%}%{$fg_bold[grey]%}]%c{$reset_color%}-%{$fg_bold[yellow]%}>%{$reset_color%} "

# Adapted from code found at <https://gist.github.com/1712320>.

setopt prompt_subst
autoload -U colors && colors # Enable colors in prompt

# Modify the colors and symbols in these variables as desired.
GIT_PROMPT_SYMBOL="%{$fg[blue]%}±"
GIT_PROMPT_PREFIX="%{$fg[green]%}[%{$reset_color%}"
GIT_PROMPT_SUFFIX="%{$fg[green]%}]%{$reset_color%}"
GIT_PROMPT_AHEAD="%{$fg[red]%}ANUM%{$reset_color%}"
GIT_PROMPT_BEHIND="%{$fg[cyan]%}BNUM%{$reset_color%}"
GIT_PROMPT_MERGING="%{$fg_bold[magenta]%}⚡︎%{$reset_color%}"
GIT_PROMPT_UNTRACKED="%{$fg_bold[red]%}●%{$reset_color%}"
GIT_PROMPT_MODIFIED="%{$fg_bold[yellow]%}●%{$reset_color%}"
GIT_PROMPT_STAGED="%{$fg_bold[green]%}●%{$reset_color%}"

# Show Git branch/tag, or name-rev if on detached head
parse_git_branch() {
  (git symbolic-ref -q HEAD || git name-rev --name-only --no-undefined --always HEAD) 2> /dev/null
}

# Show different symbols as appropriate for various Git repository states
parse_git_state() {

  # Compose this value via multiple conditional appends.
  local GIT_STATE=""

  local NUM_AHEAD="$(git log --oneline @{u}.. 2> /dev/null | wc -l | tr -d ' ')"
  if [ "$NUM_AHEAD" -gt 0 ]; then
    GIT_STATE=$GIT_STATE${GIT_PROMPT_AHEAD//NUM/$NUM_AHEAD}
  fi

  local NUM_BEHIND="$(git log --oneline ..@{u} 2> /dev/null | wc -l | tr -d ' ')"
  if [ "$NUM_BEHIND" -gt 0 ]; then
    GIT_STATE=$GIT_STATE${GIT_PROMPT_BEHIND//NUM/$NUM_BEHIND}
  fi

  local GIT_DIR="$(git rev-parse --git-dir 2> /dev/null)"
  if [ -n $GIT_DIR ] && test -r $GIT_DIR/MERGE_HEAD; then
    GIT_STATE=$GIT_STATE$GIT_PROMPT_MERGING
  fi

  if [[ -n $(git ls-files --other --exclude-standard 2> /dev/null) ]]; then
    GIT_STATE=$GIT_STATE$GIT_PROMPT_UNTRACKED
  fi

  if ! git diff --quiet 2> /dev/null; then
    GIT_STATE=$GIT_STATE$GIT_PROMPT_MODIFIED
  fi

  if ! git diff --cached --quiet 2> /dev/null; then
    GIT_STATE=$GIT_STATE$GIT_PROMPT_STAGED
  fi

  if [[ -n $GIT_STATE ]]; then
    echo "$GIT_PROMPT_PREFIX$GIT_STATE$GIT_PROMPT_SUFFIX"
  fi

}

# If inside a Git repository, print its branch and state
git_prompt_string() {
  local git_where="$(parse_git_branch)"
  [ -n "$git_where" ] && echo "$GIT_PROMPT_SYMBOL$(parse_git_state)$GIT_PROMPT_PREFIX%{$fg[yellow]%}${git_where#(refs/heads/|tags/)}$GIT_PROMPT_SUFFIX"
}

# Set the right-hand prompt
RPS1='$(git_prompt_string) %{$fg[cyan]%}%D{%H:%M}%{$reset_color%}'

#ssh-agent
if ! ssh-add -l > /dev/null; then
    ssh-add #$HOME/.ssh/id_rsa > /dev/null 2>&1
fi
