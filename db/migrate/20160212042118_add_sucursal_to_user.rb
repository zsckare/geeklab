class AddSucursalToUser < ActiveRecord::Migration
  def change
    add_column :users, :sucursal, :string
  end
end
