
#semi colon at the end of file
  #([a-zA-Z0-9];)

#space before semicolon
  #([a-zA-Z0-9] ;)

# exactly two indentation 
    #(\{\n)+((  \w+)|(\t\t\w+))

# single_space_after_colon?
    #:\s{1}"\w+

#no_space_before_colon
    #([a-zA-Z])+(:)
#no_trailing_white_space?
 #({$) | (;"$) | (}$)
