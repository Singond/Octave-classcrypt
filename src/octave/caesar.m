function C = caesar(str, rot)
	ab = classcrypt_settings.alphabet;
	C = strfun(@caesar_impl, str, ab, rot, ab);
endfunction

function C = caesar_impl(str, rot, ab)
	C = idx2str(str2idx(str, ab) + rot, ab);
endfunction
