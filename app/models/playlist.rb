class Playlist < ActiveRecord::Base

  validates_presence_of :user_id, :name
  belongs_to :user
  has_many :objects

  def slug
    self.name.downcase.strip.gsub(' ', '-').gsub(/[^\w-]/, '')
  end

  def self.find_by_slug(slug)
    self.all.each do |playlist|
      if playlist.slug == slug
        return playlist
      end
    end
  end

end
