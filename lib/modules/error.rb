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
end
