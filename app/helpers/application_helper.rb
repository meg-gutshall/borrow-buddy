module ApplicationHelper

  def hide_omniauth_link(action)
    unless !!current_lender
      link_to "Lender #{action} with Google", lender_google_oauth2_omniauth_authorize_path
    end
  end
    
  def boolean_display(attribute)
    attribute == true ? "Yes" : "No"
  end

end
