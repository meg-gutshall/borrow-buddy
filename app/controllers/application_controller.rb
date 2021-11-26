class ApplicationController < ActionController::Base

  def home
    render "pages/home"
  end

  private
    def after_sign_in_path_for(resource)
      lender_loans_path(current_lender)
    end
end
