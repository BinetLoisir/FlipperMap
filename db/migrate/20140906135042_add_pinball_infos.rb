class AddPinballInfos < ActiveRecord::Migration
  def change
    add_column :flippers, :rating, :float
    add_column :flippers, :url, :string
  end
end
