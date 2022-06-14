class ApplicationController < ActionController::Base
    include Pagy::Backend

    before_action :configure_permitted_parameters, if: :devise_controller?
    before_action :set_locale
    
    protected

    def set_locale(&action)
      I18n.locale = params[:locale] || session[:locale] || I18n.default_locale
      session[:locale] = I18n.locale
    end
  
    # def set_locale
    #   I18n.locale = params[:locale] || I18n.default_locale
    # end 
    
    def default_url_options(options={})
      { locale: I18n.locale }
    end
    
    def configure_permitted_parameters
      devise_parameter_sanitizer.permit(:sign_up, keys: [:first_name, :last_name, :address, :phone_no, :gender, :state, :zip_code, :landmark, :city])
      devise_parameter_sanitizer.permit(:account_update, keys: [:first_name, :last_name, :address, :phone_no, :gender, :state, :zip_code, :landmark, :city])
    end
end
