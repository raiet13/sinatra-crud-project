class CreateBooks < ActiveRecord::Migration[5.2]
  def change
    create_table :books do |b|
      b.string :title
      b.string :author
      b.integer :year_released
    end
  end
end
