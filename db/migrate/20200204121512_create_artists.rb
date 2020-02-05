class CreateArtists < ActiveRecord::Migration[6.0]
  def change
    create_table :artists do |t|
      t.string :artist_name
      t.text :email_address
      t.integer :user_id
      t.timestamps
    end
  end
end
