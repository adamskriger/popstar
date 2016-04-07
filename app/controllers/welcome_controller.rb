class WelcomeController < ApplicationController
  def index
    if params[:search]
             search_param = CGI::escapeHTML(params[:search])

             redirect_to ("/stores?search=#{search_param}&commit=Search")

            return
       end
  end
end
