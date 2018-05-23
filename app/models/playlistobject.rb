class PlaylistObject < ActiveRecord::Base

  has_many :playlists
  has_many :users, through: :playlists

  def slug
    self.title.downcase.strip.gsub(' ', '-').gsub(/[^\w-]/, '')
  end

  def self.find_by_slug(slug)
    self.all.each do |object|
      if object.slug == slug
        return object
      end
    end
  end

end
