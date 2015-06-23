class Organization < ActiveRecord::Base
  has_many :messages
  has_many :user_organizations
  has_many :users, through: :user_organizations
end
