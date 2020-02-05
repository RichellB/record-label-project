class CreateSongs < ActiveRecord::Migration[6.0]
  def change
    create_table :songs do |t|
      t.string :title 
      t.string :album_name
      t.belongs_to :artist
      t.belongs_to :genre
      t.belongs_to :user
      t.string :release_year
        
      t.timestamps
    end
  end
end
