## Apply a function to a specified subset of characters in a string.
function R = strfun(func, str, chars, varargin)
	R = str;
	if (nargin < 2)
		print_usage;
		return;
	elseif (nargin < 3)
		M = true(size(R));
	else
		M = ismember(str, chars);
	endif
	R(M) = func(str(M), varargin{:});
endfunction
