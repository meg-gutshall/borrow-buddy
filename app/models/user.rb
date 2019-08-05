class User < ApplicationRecord
  devise :database_authenticatable, :omniauthable, :registerable, :recoverable, :rememberable, :validatable
end
