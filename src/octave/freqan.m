## -*- texinfo -*-
## @deftypefn  {Function file} {n =} freqan(str)
## @deftypefnx {Function file} {n =} freqan(str, alphabet)
## Perform frequency analysis of the string @var{str}.
## The return value @var{n} is a vector of counts of each character of
## the current alphabet in the string @var{str}.
## @end deftypefn
function n = freqan(str, alphabet)
	if (nargin < 2)
		alphabet = classcrypt_settings.alphabet;
	endif
	n = histc(str, alphabet);
endfunction
