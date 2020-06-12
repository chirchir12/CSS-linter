# require 'colorize'
# #semi colon at the end of file
#   #([a-zA-Z0-9];)

# #space before semicolon
#   #([a-zA-Z0-9] ;)

# # exactly two indentation
#     #(\{\n)+((  \w+)|(\t\t\w+))

# # single_space_after_colon?
#     #:\s{1}"\w+

# #no_space_before_colon
#     #([a-zA-Z])+(:)
# #no_trailing_white_space?
#  #({$) | (;"$) | (}$)
#  def start_of_style_block(str)
#   !!(str=~/^(#|\.)+([a-zA-Z0-9\-_]+)+(\s*\.\s*|>|:*)+(\w+)+(\s*)+({\s*)/ ||
#   str=~/^([a-zA-Z0-9\-_]+)+(\.|\s*>\s*|:+)+([a-zA-Z0-9\-_]+)+(\s*{\s*)/ || str=~/^\n/)
#  end

#  def end_of_style_block(str)
#   !!(str=~/^\s*}\s*/)

#  end

#  def style_between_block(str)
#    return true unless start_of_style_block?(str) || end_of_style_block?(str)
# false
#  end

#  def check_missing_semi_colon(str, i, arr)
#  if style_between_block(str)
#   return true if str.match?(/(.;.*)$/)
#   puts 'Error '.red + "on" + " line:[:#{i+1}:]".yellow + ' Missing ending semicolon '
#   arr << str
#  end
#  end

#  def check_space_before_semi_colon(str, i, arr)
#   if style_between_block(str)
#     return true unless str.match?(/( ;)+/)
#     puts 'Error '.red + "on" + " line:[:#{i+1}:]".yellow + ' Unexpected space before semicolon'
#     arr << str
#    end
#  end

#  def check_indentations(str, i, arr)
#   if style_between_block(str)
#     return true if str.match?(/^(\s{2})+([a-zA-Z0-9\-_]+)/)
#     puts 'Error '.red + "on" + " line:[:#{i+1}:]".yellow + ' Expecting 2 spaces before rule '
#     arr << str
#    end
#  end

#  def check_single_space_after_after_colon(str, i, arr)
#   if style_between_block(str)
#     return true if str.match?(/.\s:\s./)
#     puts 'Error '.red + "on" + " line:[:#{i+1}:]".yellow + ' Expecting single spaces before rule'
#     arr << str
#    end
#  end

#  def check_trailing_white_space(str, i, arr)
#   if !str.match?(/(?<=\S)[\t ]+$/) || str.match?(/^\n$/)
#     true
#   else
#     puts 'Error '.red + "on" + " line:[:#{i+1}:]".yellow + ' Unexpected White spaces'
#     arr << str
#   end
# end

# if !File.exists?("file.css")
# puts 'no such file'
# return
# end
# arr=[]
# file = File.open("file.css")
# file_data = file.readlines
# file_data.each_with_index do |str, idx|
#   # check_missing_semi_colon(str, idx, arr)
#   # check_space_before_semi_colon(str, idx, arr)
#   # check_indentations(str, idx, arr)
#   # check_single_space_after_after_colon(str, idx, arr)
#   # check_trailing_white_space(str, idx, arr)
#     p str
#   end

# puts "total errors" + " #{arr.length}".red
