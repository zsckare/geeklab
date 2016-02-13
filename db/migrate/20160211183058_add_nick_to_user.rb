class AddNickToUser < ActiveRecord::Migration
  def change
  	add_column :users, :nick, :string
  	add_column :users, :type, :integer
  end
end
