# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20110821230241) do

  create_table "rw_commentmeta", :force => true do |t|
    t.integer  "meta_id"
    t.integer  "comment_id", :default => 0, :null => false
    t.string   "meta_key"
    t.text     "meta_value"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "rw_commentmeta", ["comment_id"], :name => "comment_id"
  add_index "rw_commentmeta", ["meta_key"], :name => "meta_key"

  create_table "rw_comments", :force => true do |t|
    t.integer  "comment_id"
    t.integer  "comment_post_id"
    t.text     "comment_author"
    t.string   "comment_author_email", :limit => 100
    t.string   "comment_author_url",   :limit => 200
    t.string   "comment_author_ip",    :limit => 100
    t.datetime "comment_date"
    t.datetime "comment_date_gmt"
    t.text     "comment_content"
    t.integer  "comment_karma"
    t.string   "comment_approved",     :limit => 20
    t.string   "comment_agent"
    t.string   "comment_type",         :limit => 20
    t.integer  "comment_parent"
    t.integer  "user_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "rw_comments", ["comment_approved", "comment_date_gmt"], :name => "comment_approved_date_gmt"
  add_index "rw_comments", ["comment_approved"], :name => "comment_approved"
  add_index "rw_comments", ["comment_date_gmt"], :name => "comment_date_gmt"
  add_index "rw_comments", ["comment_parent"], :name => "comment_parent"
  add_index "rw_comments", ["comment_post_id"], :name => "comment_post_id"

  create_table "rw_links", :force => true do |t|
    t.integer  "link_id"
    t.string   "link_url"
    t.string   "link_name"
    t.string   "link_image"
    t.string   "link_target",      :limit => 25
    t.string   "link_description"
    t.string   "link_visible",     :limit => 20, :default => "Y"
    t.integer  "link_owner",                     :default => 1
    t.integer  "link_rating",                    :default => 0
    t.datetime "link_updated"
    t.string   "link_rel"
    t.text     "link_notes"
    t.string   "link_rss"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "rw_links", ["link_visible"], :name => "link_visible"

  create_table "rw_options", :force => true do |t|
    t.integer  "option_id"
    t.integer  "blog_id",                    :default => 0
    t.string   "option_name",  :limit => 64
    t.text     "option_value"
    t.string   "autoload",     :limit => 20, :default => "yes"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "rw_options", ["option_name"], :name => "option_name", :unique => true

  create_table "rw_postmeta", :force => true do |t|
    t.integer  "meta_id"
    t.integer  "post_id",    :default => 0
    t.string   "meta_key"
    t.text     "meta_value"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "rw_postmeta", ["meta_key"], :name => "meta_key_postmeta"
  add_index "rw_postmeta", ["post_id"], :name => "post_id"

  create_table "rw_posts", :force => true do |t|
    t.integer  "post_author",                          :default => 0
    t.datetime "post_date"
    t.datetime "post_date_gmt"
    t.text     "post_content"
    t.text     "post_title"
    t.text     "post_excerpt"
    t.string   "post_status",           :limit => 20,  :default => "publish"
    t.string   "comment_status",        :limit => 20,  :default => "open"
    t.string   "ping_status",           :limit => 20,  :default => "open"
    t.string   "post_password",         :limit => 20
    t.string   "post_name",             :limit => 200
    t.text     "to_ping"
    t.text     "pinged"
    t.datetime "post_modified"
    t.datetime "post_modified_gmt"
    t.text     "post_content_filtered"
    t.integer  "post_parent",                          :default => 0
    t.string   "guid"
    t.integer  "menu_order",                           :default => 0
    t.string   "post_type",             :limit => 20,  :default => "post"
    t.string   "post_mime_type",        :limit => 100
    t.integer  "comment_count",                        :default => 0
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "rw_posts", ["post_author"], :name => "post_author"
  add_index "rw_posts", ["post_name"], :name => "post_name"
  add_index "rw_posts", ["post_parent"], :name => "post_parent"
  add_index "rw_posts", ["post_type", "post_status", "post_date", "id"], :name => "type_status_date"

  create_table "rw_term_relationships", :force => true do |t|
    t.integer  "object_id",        :default => 0
    t.integer  "term_taxonomy_id", :default => 0
    t.integer  "term_order",       :default => 0
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "rw_term_relationships", ["term_taxonomy_id"], :name => "term_taxonomy_id"

  create_table "rw_term_taxonomies", :force => true do |t|
    t.integer  "term_taxonomy_id"
    t.integer  "term_id",                        :default => 0
    t.string   "taxonomy",         :limit => 32
    t.text     "description"
    t.integer  "parent",                         :default => 0
    t.integer  "count",                          :default => 0
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "rw_term_taxonomies", ["taxonomy"], :name => "taxonomy"
  add_index "rw_term_taxonomies", ["term_id", "taxonomy"], :name => "term_id_taxonomy", :unique => true

  create_table "rw_terms", :force => true do |t|
    t.integer  "term_id"
    t.string   "name",       :limit => 200
    t.string   "slug",       :limit => 200
    t.integer  "term_group",                :default => 0
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "rw_terms", ["name"], :name => "name"
  add_index "rw_terms", ["slug"], :name => "slug"

  create_table "rw_usermeta", :force => true do |t|
    t.integer  "umeta_id"
    t.integer  "user_id",    :default => 0
    t.string   "meta_key"
    t.text     "meta_value"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "rw_usermeta", ["meta_key"], :name => "meta_key_usermeta"
  add_index "rw_usermeta", ["user_id"], :name => "user_id"

  create_table "rw_users", :force => true do |t|
    t.string   "user_login",          :limit => 60
    t.string   "user_pass",           :limit => 64
    t.string   "user_nicename",       :limit => 50
    t.string   "user_email",          :limit => 100
    t.string   "user_url",            :limit => 100
    t.datetime "user_registered"
    t.string   "user_activation_key", :limit => 60
    t.integer  "user_status",                        :default => 0
    t.string   "display_name",        :limit => 250
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "rw_users", ["user_login"], :name => "user_login_key"
  add_index "rw_users", ["user_nicename"], :name => "user_nicename"

end
