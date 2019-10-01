function str = idx2str(nums)
	ab = classcrypt_settings.alphabet;
	str = ab(mod(nums-1, length(ab))+1);
endfunction
