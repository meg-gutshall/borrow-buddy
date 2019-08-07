class Lender < ApplicationRecord
  has_many :items
  has_many :borrows, through: :items
  has_many :recipients, through: :items
  devise :database_authenticatable, :omniauthable, :registerable, :recoverable, :rememberable, :validatable
end