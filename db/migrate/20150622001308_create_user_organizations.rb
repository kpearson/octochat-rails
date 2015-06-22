class CreateUserOrganizations < ActiveRecord::Migration
  def change
    create_table :user_organizations do |t|
      t.integer :org_id
      t.integer :user_id

      t.timestamps null: false
    end
  end
end
