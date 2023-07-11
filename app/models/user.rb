# email: string
# password_digest: string
# 
# password:string
# password_confirmation: string
class User < ApplicationRecord
  validates :email, presence: true, format: { with: /\A[\w+\-.]+@[a-z\d\-]+(\.[a-z\d\-]+)*\.[a-z]+\z/i, message: "must be a valid email address" }

  has_secure_password
end
