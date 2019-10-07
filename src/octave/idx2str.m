function str = idx2str(nums, alphabet)
	if (nargin < 2)
		alphabet = classcrypt_settings.alphabet;
	endif
	str = alphabet(mod(nums-1, length(alphabet))+1);
endfunction
