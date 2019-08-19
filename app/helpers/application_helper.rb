module ApplicationHelper

  def hide_omniauth_login
    unless !!current_lender
      link_to "Lender Login with Google", lender_google_oauth2_omniauth_authorize_path
    end
  end

  def hide_omniauth_signup
    unless !!current_lender
      link_to "Lender Signup with Google", lender_google_oauth2_omniauth_authorize_path
    end
  end
    
  def boolean_display(attribute)
    attribute == true ? "Yes" : "No"
  end

end
