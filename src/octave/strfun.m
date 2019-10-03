function R = strfun(func, str)
	R = str;
	ab = classcrypt_settings.alphabet;
	M = ismember(str, ab);
#	R(M) = arrayfun(func, str(M));
	R(M) = func(str(M));
endfunction
