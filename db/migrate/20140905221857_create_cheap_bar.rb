class CreateCheapBar < ActiveRecord::Migration
  def change
    create_table :cheap_bars do |t|
      t.string :name
      t.string :address
      t.float :latitude
      t.float :longitude
      t.string :url
      t.float :price
      t.float :original_price
      t.string :happy_hour
      t.timestamps
    end
  end
end
