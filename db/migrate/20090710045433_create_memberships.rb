class CreateMemberships < ActiveRecord::Migration
  def self.up
    create_table :memberships do |t|
      t.integer :site_id
      t.integer :user_id
      t.datetime :created_at
      t.datetime :updated_at
      t.boolean :admin

      t.timestamps
    end
  end

  def self.down
    drop_table :memberships
  end
end