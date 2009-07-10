class CreateMedia < ActiveRecord::Migration
  def self.up
    create_table :media do |t|
      t.string :content_type
      t.string :filename
      t.integer :size
      t.integer :parent_id
      t.integer :site_id
      t.string :title
      t.integer :user_id
      t.datetime :created_at
      t.datetime :updated_at
      # For paperclip
      t.column :avatar_file_name, :string
      t.column :avatar_content_type, :string
      t.column :avatar_file_size, :integer
      t.column :avatar_updated_at, :datetime

      t.timestamps
    end
  end

  def self.down
    drop_table :media
  end
end