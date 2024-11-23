export PATH="$HOME/.pyenv/bin:$PATH"
eval "$(pyenv init --path)"
eval "$(pyenv init -)"
eval "$(pyenv virtualenv-init -)"

export CERT_PATH=$(python3 -m certifi)
export SSL_CERT_FILE=$CERT_PATH
export REQUESTS_CA_BUNDLE=$CERT_PATH
