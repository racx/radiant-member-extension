class AddTrackingFieldsToMembers < ActiveRecord::Migration
  def self.up
    add_column :members, :sign_in_count, :integer, :default => 0
    add_column :members, :last_sign_in_at, :datetime   
    add_column :members, :last_sign_in_ip, :string     
  end
  
  def self.down
    remove_column :members, :sign_in_count
    remove_column :members, :last_sign_in_at
    remove_column :members, :last_sign_in_ip        
  end
end