class Photo
  attr_reader :width, :height

  def initialize(width, height)
    @width = width
    @height = height
  end
end

class PhotosController < ApplicationController
  def index
    @photo_list = []
    @row_height = 400

    ratio1 = 3.0 / 2.0
    ratio2 = 2.0 / 3.0

    30.times do
      ratio = if 1 + rand(2) == 1
        ratio1
      else
        ratio2
      end

      width = @row_height * ratio
      @photo_list << Photo.new(width, @row_height)
    end
  end
end
