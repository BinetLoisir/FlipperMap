class AddForeignKeyForGoogleId < ActiveRecord::Migration
  def up
    add_index :google, :place_id, unique: true
    execute 'ALTER TABLE bars ADD CONSTRAINT bars_ibfk_1
      FOREIGN KEY(google_id) REFERENCES google(place_id) ON DELETE CASCADE ON UPDATE CASCADE'
  end

  def down
    execute 'ALTER TABLE bars DROP FOREIGN KEY bars_ibfk_1'
    remove_index :google, :place_id
  end
end
