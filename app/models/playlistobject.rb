class PlaylistObject < ActiveRecord::Base

  validates_presence_of :name
  has_many :playlists
  has_many :users, through: :playlists

  def slug
    self.name.downcase.strip.gsub(' ', '-').gsub(/[^\w-]/, '')
  end

  def self.find_by_slug(slug)
    self.all.each do |object|
      if object.slug == slug
        return object
      end
    end
  end

end
