# ZSH && tmux Config

## 1. dependencies:
- zsh
- tmux
- zplug
- fzf
- nord-tmux (only source files are required)

## 2. locations:

For zsh-local:
- place it in `~/.zplug/repos/`.


## 3. installation
after installed all the dependencies:

- set zsh as default shell
- replace your `~/.zshrc` and `~/.tmux.conf`;
- run `exec zsh`
- put nord-tmux in `~/.tmux`
- run `source-file ~/.tmux.conf`
- set tmux as your default shell


## 4. some modifications:

you can remove the zplug messenge by modifying `~/.zplug/base/core`.
