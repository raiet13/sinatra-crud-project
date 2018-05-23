# require_relative './playlistobject.rb'

# class Song < PlaylistObject
class Song < ActiveRecord::Base

  validates_presence_of :title, :artist, :year_released


end
