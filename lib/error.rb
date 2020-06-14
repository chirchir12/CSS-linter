require_relative './modules/error.rb'
class ErrorHandler
  include ErrorModule
  attr_reader :error_arr, :data
  def initialize(data)
    @error_arr = []
    @data = data
  end

  def error_count
    @error_arr.length
  end

  private

  def processor
    data.each_with_index do |str, idx|
      check_empty_blocks(str, idx, @error_arr)
      check_missing_semi_colon(str, idx, @error_arr)
      check_space_before_semi_colon(str, idx, @error_arr)
      check_indentations(str, idx, @error_arr)
      check_single_space_after_after_colon(str, idx, @error_arr)
      check_trailing_white_space(str, idx, @error_arr)
    end
  end

  public

  def process_errors
    processor
  end
end
