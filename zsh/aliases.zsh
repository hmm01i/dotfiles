type vim 2>&1 > /dev/null && alias vi="vim"
alias apl="ansible-playbook --diff"
alias aplprod="ANSIBLE_CONFIG=~/.ansible/prod.cfg apl"
alias agl="ansible-galaxy"
alias aglreq="agl install -r requirements.yml"

#for using minikube
alias mkgo='eval $(minikube docker-env)'

alias mkno="unset DOCKER_TLS_VERIFY;  unset DOCKER_HOST; unset DOCKER_CERT_PATH; unset DOCKER_API_VERSION"
