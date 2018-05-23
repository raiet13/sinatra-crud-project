class CreatePlaylists < ActiveRecord::Migration[5.2]
  def change
    create_table :playlists do |i|
      i.string :name
      i.string :type
      i.integer :user_id
    end
  end
end
