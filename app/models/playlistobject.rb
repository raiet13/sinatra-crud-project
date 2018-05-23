class PlaylistObject < ActiveRecord::Base

  has_many :playlists
  has_many :users, through: :playlists

end
