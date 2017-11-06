class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  
    before_action :configure_permitted_parameters, if: :devise_controller?
  
    protected
  
     def configure_permitted_parameters
        devise_parameter_sanitizer.permit(:sign_up, keys: [:name, :Breeder])
        devise_parameter_sanitizer.permit(:account_update, keys: [:name, :breeder_name, :street_address, :suburb, :state, :clubs, :description, :next_litter, :breeder_id, :website, :image])
     end
    
end