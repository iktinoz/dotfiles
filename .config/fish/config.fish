set -Ux EDITOR nano
set -Ux VISUAL nano
set -g theme_display_hostname yes

function fish_title
    
    if set -q argv[1]
        echo $argv[1]
 
    else
        prompt_pwd
    end
end

if command -q fastfetch
   fastfetch
end

if status is-interactive
   alias dotfiles='/usr/bin/git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME'
end

# Created by `pipx` on 2025-09-09 07:58:04
set PATH $PATH /home/pbruns/.local/bin

# Created by `pipx` on 2025-09-18 19:20:04
set PATH $PATH /home/patrick/.local/bin
