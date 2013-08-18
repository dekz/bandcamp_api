require 'bandcamp/track'
require 'bandcamp/associated'
require 'bandcamp/methodical'

module Bandcamp
  class Discography

    def initialize disco_hash
      @disco_hash = disco_hash
      @albums = @disco_hash.map { |album| Album.new album }
    end

    def albums
      @albums
    end

    def to_json
      MultiJson.encode @disco_hash
    end

  end
end
