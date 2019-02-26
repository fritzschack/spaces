class ChangeIsHostColumnInUsers < ActiveRecord::Migration[5.2]
  change_column :users, :is_host, :boolean, :default => false
end
