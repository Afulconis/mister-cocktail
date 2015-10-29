class AddDescriptionToDoses < ActiveRecord::Migration
  def change
    add_column :doses, :description, :text
  end
end
