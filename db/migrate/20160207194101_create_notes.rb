class CreateNotes < ActiveRecord::Migration
  def change
    create_table :notes do |t|
      t.string :folio
      t.references :client, index: true

      t.timestamps null: false
    end
    add_foreign_key :notes, :clients
  end
end
