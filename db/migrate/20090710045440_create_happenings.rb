class CreateHappenings < ActiveRecord::Migration
  def self.up
    create_table :happenings do |t|
      t.string :mode
      t.integer :user_id
      t.integer :article_id
      t.text :title
      t.text :body
      t.datetime :created_at
      t.datetime :updated_at
      t.string :author
      t.integer :comment_id
      t.integer :site_id

      t.timestamps
    end
  end

  def self.down
    drop_table :happenings
  end
end