## -*- texinfo -*-
## @deftypefn  {Function file} {len =} longestline(str)
## Return the length of the longest line in @var{str}. A line is a substring
## between two line break characters.
function len = longestline(str)
	lines = ostrsplit(str, "\n");
	len = max(cellfun(@visiblelength, lines));
endfunction

function len = visiblelength(line)
	len = length(strtrim(line));
endfunction
