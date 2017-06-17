# hackrc

This is a repo of the dotfiles I care.

- tmux
- vimrc

#### tmux

There is nothing special about my tmux config. I've added mouse support to resize and switch windows.

#### Vim

My vim setup uses Vundle as plugin manager. Config & Plugins oriendted to:
- Project/Files navigation. NERDTree + CtrlP 
- Better status bar
- Web development (Markdown, HTML, JS, CSS) (No framework specifics)
- Exploit development (Python, C/C++)
- Molokai theme and colorscheme

## How to set up

I think the best way to set it up is to fork this repo and use your own config, as you will want to update/modify them.

#### The way I work on is:

- Clone the repo
- BackUp/Remove the existing .tmux.conf and .vimrc files from my home (if already there)
- SymLink the dot files to my home, so everytime I update one of them I'm actually updating the one in the repo. 
- Keep the repo updated. Once I get the config I like, I commit and push the changes.
