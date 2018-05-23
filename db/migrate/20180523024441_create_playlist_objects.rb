class CreatePlaylistObjects < ActiveRecord::Migration[5.2]
  def change
    create_table :playlist_objects do |po|
      po.integer :playlist_id
      po.integer :object_id
    end
  end
end
