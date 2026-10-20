if status is-interactive
	set fish_greeting
	fetch --shading-mode blocks
	alias clear 'printf "\e[H\e[2J\e[3J"'
end
