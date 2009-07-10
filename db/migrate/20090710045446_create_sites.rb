class CreateSites < ActiveRecord::Migration
  def self.up
    create_table :sites do |t|
      t.string :title
      t.string :subtitle
      t.string :email
      t.text :ping_urls
      t.integer :articles_per_page
      t.string :host
      t.string :akismet_key
      t.string :akismet_url
      t.boolean :approve_comments
      t.integer :comment_age
      t.string :timezone
      t.string :filter
      t.string :permalink_style
      t.string :search_path
      t.string :tag_path
      t.string :tag_layout
      t.string :current_theme_path
      t.datetime :created_at
      t.datetime :updated_at

      t.timestamps
    end
  end

  def self.down
    drop_table :sites
  end
end