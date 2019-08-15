# frozen_string_literal: true

class Lenders::OmniauthCallbacksController < Devise::OmniauthCallbacksController

  def google_oauth2
    @lender = Lender.from_omniauth(request.env['omniauth.auth'])

    if @lender.persisted?
      flash[:notice] = I18n.t 'devise.omniauth_callbacks.success', kind: 'Google'
      sign_in_and_redirect @lender, event: :authentication
    else
      session['devise.google_data'] = request.env['omniauth.auth'].except(:extra) # Removing extra as it can overflow some session stores
      redirect_to new_lender_registration_url, alert: @lender.errors.full_messages.join("\n")
    end
  end

  # More info at:
  # https://github.com/plataformatec/devise#omniauth

  # GET|POST /resource/auth/twitter
  # def passthru
  #   super
  # end

  # GET|POST /users/auth/twitter/callback
  # def failure
  #   super
  # end

  # protected
  
  # The path used when OmniAuth fails
  # def after_omniauth_failure_path_for(scope)
  #   super(scope)
  # end
end
