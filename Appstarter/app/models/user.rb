class User < ActiveRecord::Base
  has_many :projects
  has_many :rewards, through: :pledges
  has_many :pledges
  has_secure_password
end
