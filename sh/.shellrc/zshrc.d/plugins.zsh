source ~/.zplugin/bin/zplugin.zsh

autoload -U compinit promptinit
compinit
promptinit
prompt redhat

autoload -Uz _zplugin
(( ${+_comps} )) && _comps[zplugin]=_zplugin

zplugin ice blockf
zplugin light zsh-users/zsh-completions

zplugin load zdharma/history-search-multi-word
zplugin load zdharma/zui
zplugin ice from"gh-r" as"program"; zplugin load junegunn/fzf-bin
zplugin light zsh-users/zsh-autosuggestions
zplugin light zdharma/fast-syntax-highlighting
zplugin snippet OMZ::plugins/archlinux/archlinux.plugin.zsh
zplugin snippet OMZ::plugins/git/git.plugin.zsh
zplugin snippet OMZ::plugins/command-not-found/command-not-found.plugin.zsh
zplugin snippet OMZ::plugins/colored-man-pages/colored-man-pages.plugin.zsh
zplugin snippet OMZ::plugins/cp/cp.plugin.zsh
zplugin snippet OMZ::plugins/systemd/systemd.plugin.zsh
zplugin snippet OMZ::plugins/fzf/fzf.plugin.zsh
zplugin snippet OMZ::lib/git.zsh
zplugin snippet OMZ::lib/theme-and-appearance.zsh
zplugin snippet PZT::modules/utility/init.zsh
zplugin snippet OMZ::themes/afowler.zsh-theme
zplugin load lukechilds/zsh-nvm
