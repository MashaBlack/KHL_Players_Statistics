class User < ApplicationRecord
  # add_column :users, :password_digest, :string
  # add_column :users, :remember_token, :string
  # add_index :users, :remember_token
  before_save { self.email = email.downcase }
  # before_save { email.downcase! } # alternative
  before_create :create_remember_token

  validates :name, presence: true, uniqueness: true, length: { maximum: 50 }

  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-]+(\.[a-z]+)*\.[a-z]+\z/i
  validates :email, presence: true,
            uniqueness: { case_sensitive: false },
            format: { with: VALID_EMAIL_REGEX }

  has_secure_password
  validates :password, length: { minimum: 6 }

  has_many :values, dependent: :destroy
  # todo: validations

  def User.new_remember_token
    SecureRandom.urlsafe_base64
  end

  def User.encrypt(token)
    Digest::SHA1.hexdigest(token.to_s)
  end

  private

  def create_remember_token
    self.remember_token =
      User.encrypt(User.new_remember_token)
  end
end
