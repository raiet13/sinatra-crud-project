class CreateMovies < ActiveRecord::Migration[5.2]
  def change
    create_table :movies do |m|
      m.string :title
      m.integer :year_released
    end
  end
end
