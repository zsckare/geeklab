class AddPlaceToNotes < ActiveRecord::Migration
  def change
    add_column :notes, :sucursal, :string
  end
end
