class User < ActiveRecord::Base
  has_secure_password
  attr_accessible :first_name, :last_name, :password, :password_confirmation, :email

  before_save { |user| user.email = email.downcase }

  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
  validates :email, presence: true,
                      format: { with: VALID_EMAIL_REGEX },
                  uniqueness: { case_sensitive: false }

  def generate_token(column)
    begin
      self[column] = SecureRandom.urlsafe_base64
    end while User.exists?(column => self[column])
  end

end
