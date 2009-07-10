class CreateTaggings < ActiveRecord::Migration
  def self.up
    create_table :taggings do |t|
      t.integer :tag_id
      t.integer :taggable_id
      t.string :taggable_type
      t.datetime :created_at
      t.datetime :updated_at

      t.timestamps
    end
  end

  def self.down
    drop_table :taggings
  end
end