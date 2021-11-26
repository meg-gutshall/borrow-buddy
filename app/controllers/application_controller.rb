class ApplicationController < ActionController::Base

  def home
    render "pages/home"
  end

  def privacy
    render "pages/privacy"
  end

  private
    def after_sign_in_path_for(resource)
      lender_loans_path(current_lender)
    end
end
