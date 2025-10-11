if status is-interactive
    # Commands to run in interactive sessions can go here
end
set -x XCURSOR_THEME Bibata
set -x XCURSOR_SIZE 24

fish_add_path /home/mrangames/.spicetify
set -Ux GTK_THEME Dracula
set -Ux XCURSOR_THEME Bibata-Modern-Ice
set -Ux XCURSOR_SIZE 24
function hyprfetch
    fastfetch --config ~/.config/fastfetch/hypr.jsonc $argv
end
fastfetch --config ~/.config/fastfetch/hypr.jsonc
set -g fish_greeting ""
function zapret
    sh -c "$(curl -fsSL https://raw.githubusercontent.com/Snowy-Fluffy/zapret.installer/refs/heads/main/installer.sh)" 
end
function windows
	cd ~/winapps
	docker-compose --file ./compose.yaml up
end
