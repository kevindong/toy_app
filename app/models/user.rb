class User < ApplicationRecord
  has_many :microposts
  validates :email, presence: true, format: { with: /\b[A-Z0-9._%a-z\-]+@(?:[A-Z0-9a-z\-]+\.)+[A-Za-z]{2,4}\z/, message: "address is not valid" }
  validates :name, presence: true
end