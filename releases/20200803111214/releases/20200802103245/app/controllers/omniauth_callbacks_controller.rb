# class  < ApplicationController

class OmniauthCallbacksController < Devise::OmniauthCallbacksController
  # def twitter
  #   callback_from :twitter
  # end

  # private

  # def callback_from(provider)
  #   provider = provider.to_s

  #   @user = User.find_for_oauth(request.env['omniauth.auth'])

  #   if @user.persisted?
  #     flash[:notice] = I18n.t('devise.omniauth_callbacks.success', kind: provider.capitalize)
  #     sign_in_and_redirect @user, event: :authentication
  #   else
  #     session['devise.twitter_data'] = request.env['omniauth.auth'].except('extra')
  #     redirect_to new_user_registration_url
  #   end
  # end
end
