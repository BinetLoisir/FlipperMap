class GoogleId < ActiveRecord::Migration
  def change
    add_column :bars, :google_id, :string
    add_column :cheap_bars, :google_id, :string
    create_table :google do |t|
      t.string :name
      t.string :address
      t.float :latitude
      t.float :longitude
      t.float :rating
      t.string :types
      t.string :place_id
      t.string :old_id
      t.timestamps
    end
  end
end
