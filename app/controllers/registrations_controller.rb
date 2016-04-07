class RegistrationsController < Devise::RegistrationsController

  def search
    if params[:search]
               search_param = CGI::escapeHTML(params[:search])

               redirect_to ("/stores?search=#{search_param}&commit=Search")

              return
         end
  end

  private

  def sign_up_params
    params.require(:user).permit(:company_name, :email, :password, :password_confirmation)
  end

  def account_update_params
    params.require(:user).permit(:company_name, :email, :password, :password_confirmation)
  end



end
