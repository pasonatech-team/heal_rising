class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  
  def breaktime
      @time=Actions.find_by(id: 1)
  end
end
