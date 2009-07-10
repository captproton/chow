# This file is auto-generated from the current state of the database. Instead of editing this file, 
# please use the migrations feature of Active Record to incrementally modify your database, and
# then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your database schema. If you need
# to create the application database on another system, you should be using db:schema:load, not running
# all the migrations from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20090710045500) do

  create_table "assigned_assets", :force => true do |t|
    t.integer  "article_id"
    t.integer  "asset_id"
    t.integer  "position"
    t.string   "label"
    t.boolean  "active"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "assigned_sections", :force => true do |t|
    t.integer  "article_id"
    t.integer  "section_id"
    t.integer  "position"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "cached_pages", :force => true do |t|
    t.string   "url"
    t.text     "references"
    t.datetime "updated_at"
    t.integer  "site_id"
    t.datetime "cleared_at"
    t.datetime "created_at"
  end

  create_table "content_versions", :force => true do |t|
    t.integer  "content_id"
    t.integer  "version"
    t.integer  "article_id"
    t.integer  "user_id"
    t.string   "title"
    t.string   "permalink"
    t.text     "excerpt"
    t.text     "body"
    t.text     "excerpt_html"
    t.text     "body_html"
    t.datetime "published_at"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "author"
    t.string   "author_url"
    t.string   "author_email"
    t.string   "author_ip"
    t.integer  "comments_count"
    t.integer  "updater_id"
    t.string   "versioned_type"
    t.integer  "site_id"
    t.boolean  "approved"
    t.integer  "comment_age"
    t.string   "filter"
    t.string   "user_agent"
    t.string   "referrer"
    t.integer  "assets_count"
  end

  create_table "contents", :force => true do |t|
    t.integer  "article_id"
    t.integer  "user_id"
    t.string   "title"
    t.string   "permalink"
    t.text     "excerpt"
    t.text     "body"
    t.text     "excerpt_html"
    t.text     "body_html"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.datetime "published_at"
    t.string   "type"
    t.string   "author"
    t.string   "author_url"
    t.string   "author_email"
    t.string   "author_ip"
    t.integer  "comments_count"
    t.integer  "updater_id"
    t.integer  "version"
    t.integer  "site_id"
    t.boolean  "approved"
    t.integer  "comment_age"
    t.string   "filter"
    t.string   "user_agent"
    t.string   "referrer"
    t.integer  "assets_count"
  end

  create_table "feedbacks", :force => true do |t|
    t.integer  "site_id"
    t.string   "name"
    t.string   "email"
    t.text     "body"
    t.string   "key"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "happenings", :force => true do |t|
    t.string   "mode"
    t.integer  "user_id"
    t.integer  "article_id"
    t.text     "title"
    t.text     "body"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "author"
    t.integer  "comment_id"
    t.integer  "site_id"
  end

  create_table "media", :force => true do |t|
    t.string   "content_type"
    t.string   "filename"
    t.integer  "size"
    t.integer  "parent_id"
    t.integer  "site_id"
    t.string   "title"
    t.integer  "user_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "avatar_file_name"
    t.string   "avatar_content_type"
    t.integer  "avatar_file_size"
    t.datetime "avatar_updated_at"
  end

  create_table "memberships", :force => true do |t|
    t.integer  "site_id"
    t.integer  "user_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.boolean  "admin"
  end

  create_table "palooza_plugins", :force => true do |t|
    t.string   "name"
    t.text     "options"
    t.string   "type"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "sections", :force => true do |t|
    t.string   "name"
    t.boolean  "show_paged_articles"
    t.integer  "articles_per_page"
    t.string   "layout_name"
    t.string   "template"
    t.integer  "site_id"
    t.string   "path"
    t.integer  "articles_count"
    t.string   "archive_path"
    t.string   "archive_template"
    t.integer  "position"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "sites", :force => true do |t|
    t.string   "title"
    t.string   "subtitle"
    t.string   "email"
    t.text     "ping_urls"
    t.integer  "articles_per_page"
    t.string   "host"
    t.string   "akismet_key"
    t.string   "akismet_url"
    t.boolean  "approve_comments"
    t.integer  "comment_age"
    t.string   "timezone"
    t.string   "filter"
    t.string   "permalink_style"
    t.string   "search_path"
    t.string   "tag_path"
    t.string   "tag_layout"
    t.string   "current_theme_path"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "taggings", :force => true do |t|
    t.integer  "tag_id"
    t.integer  "taggable_id"
    t.string   "taggable_type"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "tags", :force => true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "users", :force => true do |t|
    t.string   "username"
    t.string   "email"
    t.string   "password"
    t.string   "crypted_password"
    t.string   "password_salt"
    t.string   "persistence_token"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
