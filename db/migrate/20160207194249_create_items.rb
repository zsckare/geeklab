class CreateItems < ActiveRecord::Migration
  def change
    create_table :items do |t|
      t.string :device
      t.string :brand
      t.string :model
      t.references :note, index: true

      t.timestamps null: false
    end
    add_foreign_key :items, :notes
  end
end
