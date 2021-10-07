# frozen_string_literal: true
class Users::RegistrationsController < Devise::RegistrationsController
  before_acticon :configure_sign_up_params, only: [:create]
  before_acticon :configure_account_update_params, only: [:update]

  #Update user without insering current password
  def update_resource(resource, params)
    resource.update_without_password(params)
  end

  private

  #if you have extra params to permit, append them  to the sinitizer
  def configure_sign_up_params
    devise_params_sanitizer.permit(:sign_up, keys: [:name, :description, :password, :password_confirmation, :email, :avatar])
  end
  #if you have extra params to permit, append them  to the sinitizer
  def configure_account_update_params
    devise_params_sanitizer.permit(:account_update, keys: [:name, :description, :password, :password_confirmation, :email, :avatar])
  end
end
