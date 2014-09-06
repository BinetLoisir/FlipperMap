class FlipperBars < ActiveRecord::Migration
  def change
    create_table :locations do |t|
      t.belongs_to :flipper
      t.belongs_to :bar
      t.timestamps
    end

    execute 'ALTER TABLE locations ADD CONSTRAINT locations_ibfk_1
      FOREIGN KEY(flipper_id) REFERENCES flippers(id) ON DELETE CASCADE ON UPDATE CASCADE'
    execute 'ALTER TABLE locations ADD CONSTRAINT locations_ibfk_2
      FOREIGN KEY(bar_id) REFERENCES bars(id) ON DELETE CASCADE ON UPDATE CASCADE'
  end

  def down
    drop_table :locations
    execute 'ALTER TABLE locations DROP FOREIGN KEY locations_ibfk_1'
    execute 'ALTER TABLE locations DROP FOREIGN KEY locations_ibfk_2'
  end
end
