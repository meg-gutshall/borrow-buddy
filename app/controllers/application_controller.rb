class ApplicationController < ActionController::Base

  def home
    render "home/home"
  end

  private
    # Returns the current lender or 'nil' if none exists
    # def current_lender
    #   Lender.find_by(id: session[:lender_id])
    # end

    # Returns true or 'nil' if there is no current lender
    # def logged_in?
    #   !!current_lender
    # end
end
