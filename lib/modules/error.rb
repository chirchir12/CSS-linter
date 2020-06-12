require 'colorize'
module ErrorModule
  def start_of_style_block(str)
    if str.match?(/^(#|\.)+([a-zA-Z0-9\-_]+)+(\s*\.\s*|>|:*)+(\w+)+(\s*)+({\s*)/) ||
       str.match?(/^([a-zA-Z0-9\-_]+)+(\.|\s*>\s*|:+)+([a-zA-Z0-9\-_]+)+(\s*{\s*)/) || str.match?(/^\n/)
      true
    else
      false
    end
  end

  def end_of_style_block(str)
    str.match?(/^\s*}\s*/) ? true : false
  end

  def style_between_block(str)
    return true unless start_of_style_block(str) || end_of_style_block(str)

    false
  end

  def check_missing_semi_colon(str, indx, arr)
    return unless style_between_block(str)
    return true if str.match?(/(.;.*)$/)

    puts 'Error '.red + 'on' + " line:[:#{indx + 1}:]".yellow + ' Missing ending semicolon '
    arr << str
  end

  def check_space_before_semi_colon(str, indx, arr)
    return unless style_between_block(str)
    return true unless str.match?(/( ;)+/)

    puts 'Error '.red + 'on' + " line:[:#{indx + 1}:]".yellow + ' Unexpected space before semicolon'
    arr << str
  end

  def check_indentations(str, indx, arr)
    return unless style_between_block(str)
    return true if str.match?(/^(\s{2})+([a-zA-Z0-9\-_]+)/)

    puts 'Error '.red + 'on' + " line:[:#{indx + 1}:]".yellow + ' Expecting 2 spaces before rule '
    arr << str
  end
end
