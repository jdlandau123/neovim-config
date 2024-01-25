# neovim config

Clone this into .config/nvim and open neovim to set up

Dependencies:
- ripgrep      https://github.com/BurntSushi/ripgrep
- sudo apt install python3.10-venv (needed for python lsp support)
- A nerd font from https://www.nerdfonts.com/font-downloads (optional, needed for neo-tree icons)

Custom Hotkeys:
- Ctl+n        open neo-tree
- Ctl+p        telescope file search
- <leader>fg   telescope live grep
- <leader>h    :nohlsearch
- Shift+k      display docs for word at cursor
- <leader>gd   go to definition
- <leader>gr   get references
- <leader>ca   code action
- gcc          comment/uncomment line(s)

Vim Tab Navigation:
- Ctl+h        left
- Ctl+l        right
- Ctl+k        up
- Ctl+j        down

Other Notes:
- :Mason opens up the mason gui for lsp and formatting options
