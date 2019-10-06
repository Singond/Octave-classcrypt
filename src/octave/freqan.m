## -*- texinfo -*-
## @deftypefn  {Function file} {[freq, count, sum] =} freqan(str)
## @deftypefnx {Function file} {[freq, count, sum] =} freqan(str, alphabet)
## Perform frequency analysis of the string @var{str}.
##
## The return value @var{freq} is a vector of the relative frequency of each
## character of @var{alphabet} in the string @var{str}.
## If @var{alphabet} is not given, the current alphabet in settings is used.
##
## The optional return value @var{count} contains the count of each character.
## The total number of identified characters can be retrieved with @var{sum}.
## @end deftypefn
function [freq, count, sum] = freqan(str, alphabet)
	if (nargin < 2)
		alphabet = classcrypt_settings.alphabet;
	endif
	count = histc(str, alphabet);
	sum = sum(count);
	freq = count./ sum;
endfunction
