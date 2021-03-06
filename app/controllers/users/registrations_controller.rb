# frozen_string_literal: true

class Users::RegistrationsController < Devise::RegistrationsController
  # before_action :configure_permitted_parameters
  before_action :check_guest, only: %i[update destroy]
  # before_action :check_admin, only: %i[update destroy]
  # before_action :configure_sign_up_params, only: [:create]

  def check_guest
    redirect_to root_path, alert: 'ゲストユーザーの変更、削除はできません。' if resource.email == 'guest@example.com'
  end

  # def check_admin
  #   redirect_to root_path, alert: '管理ユーザーの変更、削除はできません。' if resource.email == 'admin-contrail@example.com'
  # end

  # # GET /resource/sign_up
  # def new
  #   super
  # end

  # # POST /resource
  # def create
  #   super
  # end

  # # GET /resource/edit
  def edit
    @user = User.find(current_user.id)
  end

  # # PUT /resource
  # def update
  #   super
  # end

  # # DELETE /resource
  # def destroy
  #   super
  # end

  # GET /resource/cancel
  # Forces the session data which is usually expired after sign
  # in to be expired now. This is useful if the user wants to
  # cancel oauth signing in/up in the middle of the process,
  # removing all OAuth session data.
  # def cancel
  #   super
  # end

  # protected

  # def configure_permitted_parameters
  #   devise_parameter_sanitizer.permit(:sign_up, keys: %i[name email])
  #   devise_parameter_sanitizer.permit(:edit, keys: %i[name email avatar])
  #   devise_parameter_sanitizer.permit(:update, keys: %i[name email avatar])
  # end

  # def update_resource(resource, params)
  #   resource.update_without_password(params)
  # end

  # def configure_permitted_parameters
  #   devise_parameter_sanitizer.permit(:sign_up, keys: [:name])
  # end

  # If you have extra params to permit, append them to the sanitizer.
  # def configure_sign_up_params
  #   devise_parameter_sanitizer.permit(:sign_up, keys: [:attribute])
  # end

  # If you have extra params to permit, append them to the sanitizer.
  # def configure_account_update_params
  #   devise_parameter_sanitizer.permit(:account_update, keys: [:attribute])
  # end

  # The path used after sign up.
  # def after_sign_up_path_for(resource)
  #   super(resource)
  # end

  # The path used after sign up for inactive accounts.
  # def after_inactive_sign_up_path_for(resource)
  #   super(resource)
  # end
end
