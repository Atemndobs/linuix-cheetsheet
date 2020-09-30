# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi



# If you come from bash you might have to change your $PATH.
 export PATH=$HOME/bin:/usr/local/bin:$HOME/.config/composer/vendor/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH="/home/atem/.oh-my-zsh"

# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/ohmyzsh/ohmyzsh/wiki/Themes
# ZSH_THEME="solarized-powerline"
# ZSH_THEME="sorin"
# ZSH_THEME="agnoster"
 ZSH_THEME="powerlevel10k/powerlevel10k"
# ZSH_THEME="spaceship"

# DEFAULT_USER="Atem"


# Set list of themes to pick from when loading at random
# Setting this variable when ZSH_THEME=random will cause zsh to load
# a theme from this variable instead of looking in $ZSH/themes/
# If set to an empty array, this variable will have no effect.
# ZSH_THEME_RANDOM_CANDIDATES=( "robbyrussell" "agnoster" )

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion.
# Case-sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to automatically update without prompting.
# DISABLE_UPDATE_PROMPT="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

# Uncomment the following line if pasting URLs and other text is messed up.
# DISABLE_MAGIC_FUNCTIONS="true"

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# You can set one of the optional three formats:
# "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# or set a custom format using the strftime function format specifications,
# see 'man strftime' for details.
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load?
# Standard plugins can be found in $ZSH/plugins/
# Custom plugins may be added to $ZSH_CUSTOM/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(
	git
	composer
	dotenv
	symfony
	symfony2
	laravel
	systemadmin
	systemd
	osx
	git-flow
	colored-man-pages
	docker
	docker-compose
	zsh-completions
	zsh-syntax-highlighting
	)


POWERLEVEL10K_MODE='awesome-fontconfig'
# source ~/.fonts/*.sh
source $ZSH/oh-my-zsh.sh

# User configuration

 export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# Set personalaliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
 alias zconf="code ~/.zshrc"
 alias src="source ~/.zshrc"
 alias ohmyzsh="code ~/.oh-my-zsh"
 alias pcon="p10k configure"
 alias dbstart="sudo /etc/init.d/mysql start"
 alias dbstop="sudo /etc/init.d/mysql stop"
 alias dbstat="sudo /etc/init.d/mysql status"
 alias apstart="sudo service apache2 start"
 alias apstop="sudo service apache2 stop"
 alias apstat="sudo service apache2 status"
 alias ubuntu="lsb_release -a"
 alias winpc="cd /mnt/c/Users/Atem/Desktop"
 alias dmnt="sudo mount -t drvfs D: /mnt/d"
 alias pj="cd ~/projects && ls -all"
 alias site="cd ~/Sites && ls -all"
 alias wind="cd /mnt/d"
 alias phps="phpstorm64.exe"
 alias ga="sudo lsof  | grep apache2"
 alias p80="sudo lsof -i -P -n | grep LISTEN"
 alias phpstart="sudo service php7.4-fpm start"
 alias phpstat="sudo service php7.4-fpm status"
 alias sqlstart="sudo service mysql start"
 alias sqlstat="sudo service mysql status"
 alias nginxstart="sudo service nginx start"
 alias nginxstat="sudo service nginx status"
 alias nginxstop="sudo service nginx stop"
 alias zip="sudo tar xvf"
 alias enap="a2ensite"
 alias cs="code ~/linux-commands.txt"
 alias kps="kill -9 $(pgrep -f phpstorm)"
 alias wpq="git clone https://github.com/mikesale/quickwp "
 alias wpi="git clone git://github.com/php4dev/heroku-wordpress.git"
 alias ds="docker-compose stop"
 alias dr="docker-compose rm"
 alias du="docker-compose up -d"
 alias exp="explorer.exe ."
 # alias paru="php artisan make:rule CheckSamePassword "
 alias pan="php artisan make:notification"
 alias pac="php artisan make:controller "
 alias par="php artisan make:resource $1Resource"
 alias paj="php artisan make:job"
 alias pmf="php artisan migrate:fresh"
 alias pmx="php artisan migrate:$1"
 alias clc="php artisan config:clear && php artisan config:cache && php artisan cache:clear && php artisan optimize:clear && composer dump-autoload && php artisan view:clear"
 alias smi='php artisan vendor:publish --provider="BeyondCode\LaravelWebSockets\WebSocketsServiceProvider" --tag="migrations"'
 alias spub='php artisan vendor:publish --provider="BeyondCode\LaravelWebSockets\WebSocketsServiceProvider" --tag="config"'
 alias sstart='php artisan websockets:serve'
 alias sstop='php artisan websockets:stop'
 alias pam="php artisan make:model "
 alias pm="php artisan migrate"
 alias pq="php artisan queue:work"
 alias tinker="php artisan tinker"
 alias pap='php artisan make:policy MessagePolicy --model="Models\\Message"'
 alias pubcon='php artisan vendor:publish --provider="$1\ServiceProvider"'

 alias fake='echo "factory("App\\Models\\Design", 2)->create()"';
 alias ih='composer run ide-helper';
 alias seed='php artisan db:seed';
 alias db-new='php artisan migrate:fresh --seed';
alias restart-redis='sudo systemctl restart redis.service';
alias status-redis='sudo systemctl status redis';

 alias ide-pub='php artisan vendor:publish --provider="Barryvdh\LaravelIdeHelper\IdeHelperServiceProvider" --tag=config'
 alias ide-helper='composer require --dev barryvdh/laravel-ide-helper';

# "php artisan vendor:publish --provider="\"Barryvdh\LaravelIdeHelper\IdeHelperServiceProvider"\" --tag=config"

 alias extphp3="sudo apt-get install php7.3-cli php7.3-curl php7.3-fpm php7.3-gd php7.3-opcache php7.4-mbstring php7.3-xmlrpc php7.3-xml php7.3-dev"

 alias extphp4="sudo apt-get install php7.4-cli php7.4-curl php7.4-fpm php7.4-gd php7.4-opcache php7.4-mbstring php7.4-xmlrpc php7.4-xml php7.4-dev php7.4-intl"
 

# source /home/atem/.zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

# export PATH="$(yarn global bin):$PATH"

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh
source /mnt/c/Users/Atem/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
source /home/atem/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

 export PATH=$HOME/.composer/vendor/bin:$PATH
 export PATH="$PATH:$HOME/.config/composer/vendor/bin"

# antigen theme denysdovhan/spaceship-prompt
# antibody bundle denysdovhan/spaceship-prompteval $(/home/linuxbrew/.linuxbrew/bin/brew shellenv)
eval $(/home/linuxbrew/.linuxbrew/bin/brew shellenv)
eval $(/home/linuxbrew/.linuxbrew/bin/brew shellenv)
eval $(/home/linuxbrew/.linuxbrew/bin/brew shellenv)

typeset -g POWERLEVEL9K_INSTANT_PROMPT=quiet
