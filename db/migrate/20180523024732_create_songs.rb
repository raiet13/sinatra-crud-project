class CreateSongs < ActiveRecord::Migration[5.2]
  def change
    create_table :songs do |s|
      s.string :title
      s.string :artist
      s.integer :year_released
    end
  end
end
