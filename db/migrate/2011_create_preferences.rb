class CreatePreferences < ActiveRecord::Migration[4.2]
  def change
    create_table :preferences do |f|
      f.boolean :allow_create_songs
      f.boolean :allow_create_artists
    end
  end
end