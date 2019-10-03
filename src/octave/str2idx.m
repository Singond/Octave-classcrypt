function num = str2idx(str)
	ab = classcrypt_settings.alphabet;
	num = lookup(ab, str);
endfunction
