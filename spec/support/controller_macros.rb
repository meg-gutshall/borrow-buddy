module ControllerMacros
  def login_lender
    before(:each) do
      @request.env["devise.mapping"] = Devise.mappings[:lender]
      sign_in FactoryBot.create(:lender)
    end
  end
end