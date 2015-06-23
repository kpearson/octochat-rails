class User < ActiveRecord::Base
  has_many :user_organizations
  has_many :organizations, through: :user_organizations

  def self.find_or_create_from_auth(auth)
    require 'pry'; binding.pry
    user = User.find_or_create_by(provider: auth.provider, uid: auth.uid)
    user.update({
      token: auth[:credentials][:token],
      username: auth[:info][:nickname]
    })
    orgs_url = auth[:extra][:raw_info][:organizations_url]
    names = OrganizationHelper.getNames(orgs_url)
    names.each do |name|
      user.organizations.find_or_create_by(name: name)
    end
  end
end
