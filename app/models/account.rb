require 'digest/sha1'

class Account < ActiveRecord::Base
  has_many :taidongs, :dependent => :destroy
  validates :email, :presence => true
  validate :password_is_valid, :on => :create

  attr_accessor :password

  def password=(new_password)
    self.salt = SecureRandom.hex(10)
    self.encrypted_password = encrypt_password(new_password)
  end

  def password_valid?(possible_password)
    self.encrypted_password == encrypt_password(possible_password)
  end

  def password_is_valid
    self.password.present?
  end

  def encrypt_password(new_pass)
    Digest::SHA1.hexdigest(self.salt + "shutaidong" + new_pass)
  end
end
