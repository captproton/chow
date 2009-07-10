class CreateFeedbacks < ActiveRecord::Migration
  def self.up
    create_table :feedbacks do |t|
      t.integer :site_id
      t.string :name
      t.string :email
      t.text :body
      t.string :key
      t.datetime :created_at
      t.datetime :updated_at

      t.timestamps
    end
  end

  def self.down
    drop_table :feedbacks
  end
end