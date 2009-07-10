class CreatePaloozaPlugins < ActiveRecord::Migration
  def self.up
    create_table :palooza_plugins do |t|
      t.string :name
      t.text :options
      t.string :type

      t.timestamps
    end
  end

  def self.down
    drop_table :palooza_plugins
  end
end