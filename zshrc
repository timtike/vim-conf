# Path to your oh-my-zsh installation.
export ZSH=/Users/ken/.oh-my-zsh


export AWS_PROFILE=aws-old-account
#export AWS_PROFILE=aws-new-account


alias k=kubectl
#complete -F __start_kubectl k


ZSH_THEME="robbyrussell"


plugins=(
  git
  vi-mode
  zsh-syntax-highlighting
  zsh-autosuggestions
  kubectl
)

source $ZSH/oh-my-zsh.sh

fpath=($fpath "/Users/ken/.zfunctions")

  # Set Spaceship ZSH as a prompt
  autoload -U promptinit; promptinit
  prompt spaceship
