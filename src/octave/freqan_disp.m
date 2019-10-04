function freqan_disp(str, alphabet)
	separator = repmat("-", 1, terminal_size()(2)-10);
	if (nargin < 2)
		alphabet = classcrypt_settings.alphabet;
	endif
	n = freqan(str, alphabet);
	list = cell(length(alphabet), 1);
	for i = 1:length(alphabet)
		list{i} = sprintf("%s %d", alphabet(i), n(i));
	endfor
	disp("Character frequencies:\n");
	printf(list_in_columns(list, [], " "));
	disp(separator);
	printf("Total characters: %d\n", length(str));
	printf("Classified:       %d\n", sum(n));
endfunction
