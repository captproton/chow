class CreateSections < ActiveRecord::Migration
  def self.up
    create_table :sections do |t|
      t.string :name
      t.boolean :show_paged_articles
      t.integer :articles_per_page
      t.string :layout_name
      t.string :template
      t.integer :site_id
      t.string :path
      t.integer :articles_count
      t.string :archive_path
      t.string :archive_template
      t.integer :position
      t.datetime :created_at
      t.datetime :updated_at

      t.timestamps
    end
  end

  def self.down
    drop_table :sections
  end
end