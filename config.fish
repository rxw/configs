function fuzzypac
	pacman -Ss | sed -n 's/^[A-Za-z]*\/\(\S*\).*$/\1/p' | fzf -m \
		--preview="pacman -Ss '^{}\$'" | xargs -r -o sudo pacman -S
end

function fcd
	cd (find (pwd -P) -type d | fzf --preview="ls {}") 
end

function fvim
	vim (find (pwd -P) -type f | fzf --preview="cat {}")
end
