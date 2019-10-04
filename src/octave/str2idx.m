function num = str2idx(str)
	ab = classcrypt_settings.alphabet;
	if (length(ab) <= 127)
		num = int8(lookup(ab, str));
	else
		num = lookup(ab, str);
	endif
endfunction
