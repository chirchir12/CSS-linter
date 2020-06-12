require 'colorize'
module ErrorModule
  def start_of_style_block(str)
    !!(str =~ /^(#|\.)+([a-zA-Z0-9\-_]+)+(\s*\.\s*|>|:*)+(\w+)+(\s*)+({\s*)/ ||
    str =~ /^([a-zA-Z0-9\-_]+)+(\.|\s*>\s*|:+)+([a-zA-Z0-9\-_]+)+(\s*{\s*)/ || str =~ /^\n/)
  end
end
