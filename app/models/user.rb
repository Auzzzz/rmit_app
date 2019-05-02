class User < ApplicationRecord
  #before_action :logged_in_user, only: [:edit, :update]
  before_save { self.email = email.downcase }
  validates :name,  presence: true, length: { minimum: 4 }
  VALID_EMAIL_REGEX = /\A[\w]+\.[\w]+@rmit.edu.au\z/i
  validates :email, presence: true, length: { minimum: 4 },
                    format: { with: VALID_EMAIL_REGEX },
                    uniqueness: { case_sensitive: false }
  has_secure_password
  validates :password, presence: true, length: { minimum: 8}, allow_nil: true

  # Returns the hash digest of the given string.
  def User.digest(string)
    cost = ActiveModel::SecurePassword.min_cost ? BCrypt::Engine::MIN_COST :
                                                  BCrypt::Engine.cost
    BCrypt::Password.create(string, cost: cost)
  end
end