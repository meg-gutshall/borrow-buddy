class Lender < ApplicationRecord
  has_many :loans
  has_many :items, through: :loans
  has_many :borrowers, through: :loans
  
  devise :database_authenticatable, :registerable, :recoverable, :rememberable, :validatable, :omniauthable, omniauth_providers: [:google_oauth2]

  def self.from_omniauth(access_token)
    data = access_token.info
    lender = Lender.where(email: data['email']).first

    # Uncomment the section below if you want lenders to be created if they don't exist
    unless lender
      lender = Lender.create(email: data['email'],
          password: Devise.friendly_token[0,20],
          provider: access_token['provider'],
          uid: access_token['uid']
      )
    end

    lender
  end

end
