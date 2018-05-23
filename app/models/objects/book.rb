class Book < ActiveRecord::Base

  validates_presence_of :title, :author, :year_released

  # NOTE : No guarantee that this association will work given that "playlist_objects" uses a general "object_id" ("type" of playlist determines which object used)
  # has_many :playlists, through: :playlist_objects

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
