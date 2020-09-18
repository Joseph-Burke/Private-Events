class AddDescriptionToEvents < ActiveRecord::Migration[6.0]
  def change
    add_column :events, :description, :text
    remove_column :events, :name
    remove_column :events, :date
  end
end
