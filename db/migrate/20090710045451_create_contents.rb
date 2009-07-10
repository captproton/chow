class CreateContents < ActiveRecord::Migration
  def self.up
    create_table :contents do |t|
      t.integer :article_id
      t.integer :user_id
      t.string :title
      t.string :permalink
      t.text :excerpt
      t.text :body
      t.text :excerpt_html
      t.text :body_html
      t.datetime :created_at
      t.datetime :updated_at
      t.datetime :published_at
      t.string :type
      t.string :author
      t.string :author_url
      t.string :author_email
      t.string :author_ip
      t.integer :comments_count
      t.integer :updater_id
      t.integer :version
      t.integer :site_id
      t.boolean :approved
      t.integer :comment_age
      t.string :filter
      t.string :user_agent
      t.string :referrer
      t.integer :assets_count

      t.timestamps
    end
  end

  def self.down
    drop_table :contents
  end
end