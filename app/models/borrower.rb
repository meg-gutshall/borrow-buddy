class Borrower < ApplicationRecord
  has_many :loans, dependent: :destroy
  has_many :items, through: :loans

  validates :name, presence: true
  validates :email, format: { with: /\A([\w+\-].?)+@[a-z\d\-]+(\.[a-z]+)*\.[a-z]+\z/i, message: "Please use proper formatting when entering the borrower's email." }, allow_blank: true
  # validates :phone, format: { with: /\A[(]\d{3}[)] \d{3}-\d{4}\z/ }, allow_blank: true

  # See `application_record.rb` for scope methods

end
