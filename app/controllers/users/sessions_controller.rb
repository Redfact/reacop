# frozen_string_literal: true

class Users::SessionsController < Devise::SessionsController
  before_action :configure_sign_in_params, only: [:create]

  # GET /resource/sign_in
  def new
    super
    puts "new session".colorize(:green)
    puts "Session result".colorize(:red),User.find_by_email(params[:email]).try(:valid_password?, params[:password])

  end

  # POST /resource/sign_in
  def create
    super
    puts "sign in".colorize(:green)
    puts params
  end

  # DELETE /resource/sign_out
  def destroy
    super
  end

  # protected

  # If you have extra params to permit, append them to the sanitizer.
  def configure_sign_in_params
    devise_parameter_sanitizer.permit(:sign_in, keys: [:attribute])
  end
end
