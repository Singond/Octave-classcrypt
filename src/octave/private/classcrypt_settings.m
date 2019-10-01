## Query or set classcrypt settings
function R = classcrypt_settings(key, val)
	persistent CLASSCRYPT_SETTINGS;
	if (isempty(CLASSCRYPT_SETTINGS))
#		disp("Initializing classcrypt settings");
		CLASSCRYPT_SETTINGS = struct;
		CLASSCRYPT_SETTINGS.alphabet = "a":"z";
	endif

	if (nargin == 0)
		R = CLASSCRYPT_SETTINGS;
	elseif (nargin == 1)
		if (isfield(CLASSCRYPT_SETTINGS, key))
			R = CLASSCRYPT_SETTINGS.(key);
		else
			error("No key called '%s' found in classcrypt settings", key);
		endif
	elseif (nargin == 2)
		CLASSCRYPT_SETTINGS.(key) = val;
	else
		error;
	endif
endfunction
