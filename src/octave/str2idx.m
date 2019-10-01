function num = str2idx(str)
	ab = classcrypt_settings.alphabet;
	num = [];
	for c = str
		num = [num find(ab==c)];
	endfor
endfunction
