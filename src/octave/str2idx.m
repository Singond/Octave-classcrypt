function num = str2idx(str, alphabet)
	if (nargin < 2)
		alphabet = classcrypt_settings.alphabet;
	endif
	if (length(alphabet) <= 127)
		num = int8(lookup(alphabet, str));
	else
		num = lookup(alphabet, str);
	endif
endfunction
