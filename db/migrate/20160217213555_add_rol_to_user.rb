class AddRolToUser < ActiveRecord::Migration
  def change
    add_column :users, :rol, :integer
  end
end
