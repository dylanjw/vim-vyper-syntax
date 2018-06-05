" Vim syntax file
" Language: Vyper
" Maintainer: Dylan Wilson
" Latest Revision: 5 June 2018
"
runtime! syntax/python.vim syntax/python/*.vim

if !exists("vyper_no_builtin_highlight")
  " built-in keywords
  syn keyword vyperBuiltin	floor decimal as_unitless_number as_num128 as_uint256
  syn keyword vyperBuiltin	as_bytes32 slice len concat keccak256 method_id
  syn keyword vyperBuiltin	ecrecover ecadd ecmul extract32 bytes_to_num as_wei_value
  syn keyword vyperBuiltin	int128 uint256 address bytes32  
  syn match   vyperAttribute	/\.\h\w*/hs=s+1
	\ contains=ALLBUT,vyperBuiltin
	\ transparent
endif
