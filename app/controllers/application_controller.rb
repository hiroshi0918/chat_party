class ApplicationController < ActionController::Base
  before_action :configure_permitted_parameters, if: :devise_controller?

  protected

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:name, :age, :image, :gender, :introduction, hobby_users_attributes: [:hobby_id,:user_id]])
  end
end
