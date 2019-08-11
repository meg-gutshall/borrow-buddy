class Lender < ApplicationRecord
  has_many :items
  has_many :borrows, through: :items
  
  devise :database_authenticatable, :registerable, :recoverable, :rememberable, :validatable, :omniauthable, omniauth_providers: [:google_oauth2]

  def self.from_omniauth(access_token)
    binding.pry
    data = access_token.info
    lender = Lender.where(email: data['email']).first

    # Uncomment the section below if you want lenders to be created if they don't exist
    unless lender
      lender = Lender.create(email: data['email'],
          password: Devise.friendly_token[0,20]
      )
    end
    lender
  end

end
