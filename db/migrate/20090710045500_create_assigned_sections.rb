class CreateAssignedSections < ActiveRecord::Migration
  def self.up
    create_table :assigned_sections do |t|
      t.integer :article_id
      t.integer :section_id
      t.integer :position
      t.datetime :created_at
      t.datetime :updated_at

      t.timestamps
    end
  end

  def self.down
    drop_table :assigned_sections
  end
end