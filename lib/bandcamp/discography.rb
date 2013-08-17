require 'bandcamp/track'
require 'bandcamp/associated'
require 'bandcamp/methodical'

module Bandcamp
  class Discography

    def initialize disco_hash
      @disco_hash = disco_hash
      p disco_hash
      @albums = @disco_hash.map { |album| Album.new album }
      #to_methods @disco_hash
      #if instance_variable_defined? "@album"
      #  @albums = @albums.map{|album| Album.new(album)}
      #end
    end

    def band
      retrieve_associated :band
    end

    def to_json
      MultiJson.encode @disco_hash
    end

  end
end
