class User < ApplicationRecord
  before_save { email.downcase! }
  validates :name, presence: true, length: {maximum: 50}
  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-]+(\.[a-z\d\-]+)*\.[a-z]+\z/i
  validates :email, presence: true, length: {maximum: 255},
    format: { with: VALID_EMAIL_REGEX }, uniqueness: { case_sensitive: false }
  has_secure_password
  validates :password, presence: true, length: { minimum: 6 }

  # Returns the hash digest of the given string.
  def User.digest(string)
    cost = ActiveModel::SecurePassword.min_cost ? BCrypt::Engine::MIN_COST :
      BCrypt::Engine.cost
    BCrypt::Password.create(string, cost: cost)
  end

end

=begin

irb(main):005:0* y user.attributes
---
id: 1
name: highslater
email: highslater@hotmail.com
created_at: !ruby/object:ActiveSupport::TimeWithZone
  utc: &1 2017-05-20 04:47:28.660907000 Z
  zone: !ruby/object:ActiveSupport::TimeZone
    name: Etc/UTC
  time: *1
updated_at: !ruby/object:ActiveSupport::TimeWithZone
  utc: &2 2017-05-20 04:47:28.660907000 Z
  zone: !ruby/object:ActiveSupport::TimeZone
    name: Etc/UTC
  time: *2
password_digest:"$2a$10$S88PPuUtHqinfaSP6Ipv5.yLVQmB1mjA1x6uzQMwENTBiOiue4yAm"

=end
