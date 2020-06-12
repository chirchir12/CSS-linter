require_relative './modules/error.rb'
class ErrorHandler
  include ErrorModule
  attr_reader :error_arr, :data
  def initiliaze(data)
    @error_arr = []
    @data = data
  end

  def display_errors
    check_missing_semi_colon(str, idx, arr)
    check_space_before_semi_colon(str, idx, arr)
    check_indentations(str, idx, arr)
    check_single_space_after_after_colon(str, idx, arr)
    check_trailing_white_space(str, idx, arr)
  end

  def error_count
    @error_arr.length
  end
end
