# Search function: this will run fzf and feed the file found to neovim
function s
	set filename (readlink -f (fzf --preview='head -n $LINES {}' --tabstop=4 --query="$argv" --multi))

	if test "$filename" = ""
		return
	end

	echo "nvim $filename"
	nvim $filename
end
