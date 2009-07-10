class CreateAssignedAssets < ActiveRecord::Migration
  def self.up
    create_table :assigned_assets do |t|
      t.integer :article_id
      t.integer :asset_id
      t.integer :position
      t.string :label
      t.boolean :active
      t.datetime :created_at
      t.datetime :updated_at

      t.timestamps
    end
  end

  def self.down
    drop_table :assigned_assets
  end
end