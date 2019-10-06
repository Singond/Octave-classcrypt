## -*- texinfo -*-
## @deftypefn  {Function file} {} freqan_disp(str)
## @deftypefnx {Function file} {} freqan_disp(str, alphabet)
##
## Perform frequency analysis of string @var{str} and print the results.
##
## The list of characters to analyze can be given as the optional argument
## @var{alphabet}.
## @end deftypefn
function freqan_disp(str, alphabet)
	if (nargin < 2)
		alphabet = classcrypt_settings.alphabet;
	endif
	## Analyze the string
	[rel, n, sum] = freqan(str, alphabet);

	## Format the data for print
	colsep = "  ";                      # Column separator
	list = cell(length(alphabet), 1);   # List of data to be displayed
	for i = 1:length(alphabet)
		list{i} = sprintf("%s %7.4f %d%s", alphabet(i),
				rel(i)*100, n(i), colsep);
	endfor
	lineprefix = "";                    # String to prefix to each line
	listcols = list_in_columns(list, [], lineprefix);
	separator = repmat("-", 1, longestline(listcols) + length(lineprefix));

	# Print it
	disp("Character frequencies (in percent and counts):\n");
	printf(listcols);
	disp(separator);
	printf("Total characters: %d\n", length(str));
	printf("Classified:       %d\n", sum);
endfunction
