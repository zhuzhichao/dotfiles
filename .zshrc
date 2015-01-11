# Path to your oh-my-zsh configuration.
export ZSH=$HOME/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME="robbyrussell"

# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

# Set this to use case-sensitive completion
# CASE_SENSITIVE="true"

# Uncomment this to disable bi-weekly auto-update checks
# DISABLE_AUTO_UPDATE="true"

# Uncomment to change how often to auto-update? (in days)
# export UPDATE_ZSH_DAYS=13

# Uncomment following line if you want to disable colors in ls
# DISABLE_LS_COLORS="true"

# Uncomment following line if you want to disable autosetting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment following line if you want to disable command autocorrection
# DISABLE_CORRECTION="true"

# Uncomment following line if you want red dots to be displayed while waiting for completion
# COMPLETION_WAITING_DOTS="true"

# Uncomment following line if you want to disable marking untracked files under
# VCS as dirty. This makes repository status check for large repositories much,
# much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment following line if you want to the command execution time stamp shown 
# in the history command output.
# The optional three formats: "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# HIST_STAMPS="mm/dd/yyyy"

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
plugins=(git sublime autojump web-search zsh_reload osx emoji-clock composer brew bower battery)

source $ZSH/oh-my-zsh.sh

# User configuration

export PATH="/usr/local/bin:/usr/local/sbin:/usr/bin:/bin:/usr/sbin:/sbin"
# export MANPATH="/usr/local/man:$MANPATH"

# # Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# ssh
# export SSH_KEY_PATH="~/.ssh/dsa_id"

alias zshrc='subl ~/.zshrc'
alias phpt='subl ~/wwwroot/t.php'

alias cls='clear'
alias ll='ls -l'
alias la='ls -a'
alias l.='ls -d .* --color=auto'
alias vi='mvim'
alias javac="javac -J-Dfile.encoding=utf8"
alias grep="grep --color=auto"
alias ctagsphp="ctags -R --fields=+aimS --languages=php"
alias lr='ls -R | grep ":$" | sed -e '\''s/:$//'\'' -e '\''s/[^-][^\/]*\//--/g'\'' -e '\''s/^/   /'\'' -e '\''s/-/|/'\'''   #树状列出文件
alias freq='cut -f1 -d" " ~/.bash_history | sort | uniq -c | sort -nr | head -n 30'	#显示用的最多的命令
alias gitlog="git log --graph --pretty=format:'%Cred%h%Creset -%C(yellow)%d%Creset %s %Cgreen(%cr)%Creset' --abbrev-commit --date=relative"
alias sshkey="cat ~/.ssh/id_rsa.pub | pbcopy && echo 'Copied to clipboard.'"

#alias fpmstart="launchctl load -w ~/Library/LaunchAgents/homebrew.mxcl.php55.plist"
#alias fpmstop="launchctl unload -w ~/Library/LaunchAgents/homebrew.mxcl.php55.plist"
alias phpstart="launchctl load ~/Library/LaunchAgents/homebrew.mxcl.php54.plist"
alias phpstop="launchctl unload ~/Library/LaunchAgents/homebrew.mxcl.php54.plist"

alias mysqlstart="mysql.server start"
alias mysqlstop="mysql.server stop"

alias nginxstart="launchctl load -w ~/Library/LaunchAgents/homebrew.mxcl.nginx.plist"
alias nginxstop="launchctl unload -w ~/Library/LaunchAgents/homebrew.mxcl.nginx.plist"

alias gfw="curl -s http://tx.txthinking.com/fuckGFW.py | sudo python"

alias sshlol='ssh root@192.168.1.181'

alias zshreload='source ~/.zshrc'

alias tolf='find ./ -type f -exec dos2unix {} \;'
############命令行直接打开扩展
unalias mysql
alias -s html=subl
alias -s rb=subl
alias -s py=subl
alias -s js=subl
alias -s css=subl
alias -s php=subl
alias -s txt=subl
alias -s md=subl
alias -s htm=subl
alias -s shtml=subl
alias -s conf=subl
alias -s ini=subl
alias -s c=subl
alias -s java=subl
alias -s txt=subl
alias -s zsh=subl
alias -s gz='tar -xzvf'
alias -s tgz='tar -xzvf'
alias -s zip='unzip'
alias -s bz2='tar -xjvf'
alias -s md=mdp
alias -s mk=mdp

############LNMP操作
#Nginx
alias ngstart='sudo nginx'
alias ngstop='sudo nginx -s stop'
alias ngreload='sudo nginx -s reload'
#Mysql
#alias mysql-start

############Laravel 操作
alias artmk='php artisan migrate:make'
alias artmi='php artisan migrate'
alias artro='php artisan route'
alias artmr='php artisan migrate:rollback'
alias artsian='php artisan'
alias cpdump='composer dumpautoload'
alias bigcomposer='php -d memory_limit=-1 /usr/local/Cellar/composer/1.0.0-alpha8/libexec/composer.phar'


alias goagent='sudo python /Users/zhuzhichao/Dropbox/tools/goagent-3.2.0/local/proxy.py'

[[ -s ~/.autojump/etc/profile.d/autojump.sh ]] && . ~/.autojump/etc/profile.d/autojump.sh

export PATH=~/.composer/vendor/bin:/Applications/android-sdk-macosx/tools:/Applications/android-sdk-macosx/platform-tools:$PATH
export LC_ALL=en_US.UTF-8  
export LANG=en_US.UTF-8
export VAGRANT_DEFAULT_PROVIDER=parallels
export HOMEBREW_GITHUB_API_TOKEN=2ba87d71d064066f7f1187d18410ca1c2e3e17d8

export PATH="$(brew --prefix homebrew/php/php54)/bin:$PATH"