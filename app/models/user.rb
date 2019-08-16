class User < ApplicationRecord
  validates :name, presence: true
  validates :name, length: { maximum: 15 }
  validates :email, presence: true
  validates :email, format: { with: /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i }

  has_secure_password
  validates :password, length: { in:8..32 }
  validates :password, format: { with: /([0-9].*[a-zA-Z]|[a-zA-Z].*[0-9])/}
end
 
