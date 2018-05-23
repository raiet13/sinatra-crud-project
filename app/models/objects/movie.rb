# require_relative './playlistobject.rb'

# class Movie < PlaylistObject
class Movie < ActiveRecord::Base

  validates_presence_of :title, :year_released


end
