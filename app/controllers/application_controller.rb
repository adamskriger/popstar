class ApplicationController < ActionController::Base



  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  # Thanks to Ben Walker at Dev walks for the Instagram template on which this #site's foundation is based : https://www.devwalks.com/.
  
  protect_from_forgery with: :exception
end
