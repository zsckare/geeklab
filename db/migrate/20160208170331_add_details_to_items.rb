class AddDetailsToItems < ActiveRecord::Migration
  def change
    add_column :items, :details, :text
  end
end
