class CreateFlippers < ActiveRecord::Migration
  def change
    create_table :flippers do |t|
      t.string :name
    end
  end
end
