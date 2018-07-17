# some more ls aliases
alias ll='ls -lhF'
alias la='ls -Ah'
alias lla='ls -AhlF'
alias l='ls -CF'

# Custom aliases
alias install='sudo apt install'
alias update='sudo apt update'
alias upgrade='sudo apt upgrade'
alias remove='sudo apt remove'
alias autoremove='sudo apt autoremove'

alias bd='base64 -d'
alias tree='env LC_COLLATE=C tree'
alias qemu='qemu-system-x86_64'

alias kill='sudo kill'
alias service='sudo service'
alias vim='nvim'
alias gdb='gdb -q'
alias reset='stty sane; tput rs1'

alias volatility='python ~/Downloads/volatility/vol.py'

# Alias virtual env
alias activate="source ./venv/bin/activate"

lamp() {
	if [ $# -ne 1 ]; then
		echo 'Usage: lamp [start|stop|restart]'
	else
		if [ $1 = "start" ]; then
			sudo service apache2 start
			sudo service mysql start
		elif [ $1 = "stop" ]; then
			sudo service apache2 stop
			sudo service mysql stop
		elif [ $1 = "restart" ]; then
			sudo service apache2 restart
			sudo service mysql restart
		fi
	fi
}

# Symfony aliases
# alias symf-pac='php ./app/console'
# alias pac-clear='symf-pac cache:clear'
# alias pac-bundle='symf-pac generate:bundle'

# alias symf-cp='php ../composer.phar'
# alias cp-up='symf-cp update'
# alias cp-sup='symf-cp self-update'

# alias doc-db='symf-pac doctrine:database:create'
# alias doc-up='symf-pac doctrine:schema:update'
# alias doc-ent='symf-pac doctrine:generate:entity'
# alias doc-ent-up='symf-pac doctrine:generate:entities'
# alias doc-dql='symf-pac doctrine:query:dql'
# alias doc-fix='symf-pac doctrine:fixtures:load'
# alias doc-form='symf-pac doctrine:generate:form'

# Alias Latex
alias pdflatex='pdflatex -synctex=1 -interaction=nonstopmode -output-directory=build'
# alias pdflatex='pdflatex -output-directory=build --shell-escape' # Minted
alias xelatex='xelatex -synctex=1 -interaction=nonstopmode -output-directory=build'

# Alias tools DL
# NOT WORKING
dl() {
    if [ $# -lt 1 ]; then
        echo 'Usage: dl [apktool|d2j|jd-gui|stegsolve]'
    elif [ "$1" = "apktool" ]; then
        shift 1
        java -jar ~/Downloads/apktool_2.3.2.jar "$@"
    elif [ "$1" = "d2j" ]; then
        shift 1
        ~/Downloads/dex2jar-2.0/d2j-dex2jar.sh "$@"
    elif [ "$1" = "jd-gui" ]; then
        shift 1
        java -jar ~/Downloads/jd-gui-1.4.0.jar "$@"
    elif [ "$1" = "stegsolve" ]; then
        shift 1
        java -jar ~/Downloads/stegsolve.jar "$@"
    else
        echo "Unable to start '$1'"
    fi
}
