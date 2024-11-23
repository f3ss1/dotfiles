export PYENV_ROOT="$HOME/.pyenv"
[[ -d $PYENV_ROOT/bin ]] && export PATH="$PYENV_ROOT/bin:$PATH"
eval "$(pyenv init -)"

export CERT_PATH=$(python3 -m certifi)
export SSL_CERT_FILE=$CERT_PATH
export REQUESTS_CA_BUNDLE=$CERT_PATH
