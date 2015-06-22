class ChangeOrgIdColumNames < ActiveRecord::Migration
  def change
    rename_column :messages, :org_id, :organization_id
    rename_column :user_organizations, :org_id, :organization_id
  end
end
