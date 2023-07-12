# email: string
# password_digest: string
#
# password:string
# password_confirmation: string
class User < ApplicationRecord
  validates :email, presence: true,
                    format: { with: /\A[\w+\-.]+@[a-z\d-]+(\.[a-z\d-]+)*\.[a-z]+\z/i, message: 'must be a valid email address' }
  validates :password, presence: true
  validates :password_confirmation, presence: true

  validate :password_match

  has_secure_password

  private

  def password_match
    errors.add(:password, 'does not match password confirmation') unless password == password_confirmation
  end
end
