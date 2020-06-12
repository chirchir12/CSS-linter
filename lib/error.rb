require_relative './modules/error.rb'
class ErrorHandler
  include ErrorModule
  attr_reader :error_arr, :data
  def initiliaze(data)
    @error_arr = []
    @data = data
  end
end
