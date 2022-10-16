class User < ApplicationRecord

  has_secure_password
  has_one :farmer



  validates :email, presence: true, uniqueness: true
end
