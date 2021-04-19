# If you come from bash you might have to change your $PATH.
export PATH=$HOME/bin:/usr/local/bin:$PATH
export PROMPT='%2~ %(!.#.>) '
function mkcd() { if [ ! -d "$@" ];then mkdir -p "$@" ;fi; cd "$@"; }

function chpwd () {
    if [ -f "venv/bin/activate" ]; then
        source venv/bin/activate
    fi
}

export EDITOR=vim

function githubKeyAdd () {
	if [[ $# -ne 3 ]]
	then
		echo "Please Provide Username, Password and Keyname in that order";
	else
		curl -u "$1:$2" --data '{"title":"'$3'","key":"'"$(cat ~/.ssh/id_rsa.pub)"'"}' https://api.github.com/user/keys
	fi
}

alias py3=python3
zstyle ':completion:*' matcher-list '' 'm:{a-zA-Z}={A-Za-z}'

source /usr/share/doc/fzf/examples/key-bindings.zsh
source /usr/share/doc/fzf/examples/completion.zsh
source /usr/share/fzf/key-bindings.zsh
source /usr/share/fzf/completion.zsh
