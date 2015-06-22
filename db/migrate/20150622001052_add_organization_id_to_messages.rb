class AddOrganizationIdToMessages < ActiveRecord::Migration
  def change
    add_column :messages, :org_id, :integer
  end
end
