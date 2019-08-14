# frozen_string_literal: true

class Lenders::OmniauthCallbacksController < Devise::OmniauthCallbacksController
  before_action :skip_oauth_redirect, only: [:google_oauth2, :passthru]

  def google_oauth2
    @lender = Lender.from_omniauth(request.env['omniauth.auth'])

    # Blocker for Google Omniauth

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
  def passthru
    super
  end

  # GET|POST /users/auth/twitter/callback
  # def failure
  #   super
  # end

  private
    def skip_oauth_redirect
      if params[:access_token].present?
        redirect_to root_path, alert: "You are already signed in."
      end
    end

  # The path used when OmniAuth fails
  # def after_omniauth_failure_path_for(scope)
  #   super(scope)
  # end
end
