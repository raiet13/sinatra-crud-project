# require_relative './playlistobject.rb'

# class Book < PlaylistObject
class Book < ActiveRecord::Base

  validates_presence_of :title, :author, :year_released


end
