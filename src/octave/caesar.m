function C = caesar(str, rot)
	ab = classcrypt_settings.alphabet;
	C = strfun(@caesar_impl, str, ab, rot);
endfunction

function C = caesar_impl(str, rot)
	C = idx2str(str2idx(str) + rot);
endfunction
