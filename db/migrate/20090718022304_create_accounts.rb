class CreateAccounts < ActiveRecord::Migration
  def self.up
    create_table :accounts do |t|
      t.string :login,                    :limit => 40
      t.string :name,                     :limit => 100, :default => ""
      t.string :email,                     :limit => 100
      t.string :crypted_password
      t.string :password_salt
      t.string :persistence_token
      t.string    :single_access_token, :null => false                # optional, see Authlogic::Session::Params
      t.string    :perishable_token,    :null => false                # optional, see Authlogic::Session::Perishability      
      
      t.integer   :login_count,         :null => false, :default => 0 # optional, see Authlogic::Session::MagicColumns
      t.integer   :failed_login_count,  :null => false, :default => 0 # optional, see Authlogic::Session::MagicColumns
      t.datetime  :last_request_at                                    # optional, see Authlogic::Session::MagicColumns
      t.datetime  :current_login_at                                   # optional, see Authlogic::Session::MagicColumns
      t.datetime  :last_login_at                                      # optional, see Authlogic::Session::MagicColumns
      t.string    :current_login_ip                                   # optional, see Authlogic::Session::MagicColumns
      t.string    :last_login_ip                                      # optional, see Authlogic::Session::MagicColumns
      t.string    :state,                     :default => "passive"
      t.string    :activation_code,           :limit => 40
      t.datetime  :activated_at
      t.string    :state,                    :default => "passive"
      t.datetime  :deleted_at
      t.string    :avatar_file_name
      t.string    :avatar_content_type
      t.integer   :avatar_file_size
      t.datetime  :avatar_updated_at

      t.timestamps
    end
  end
  
  def self.down
    drop_table :accounts
  end
end
