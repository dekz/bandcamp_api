require 'support/be_json'
require 'multi_json'
require 'bandcamp/band'
require 'bandcamp/album'
require 'bandcamp/discography'

module Bandcamp
  describe Discography do

    let(:disco_hash){ MultiJson.decode File.read(File.join %w(spec fixtures discography.json)) }
    let(:disco){ Discography.new(disco_hash) }

    describe ".new" do
      it "accepts a hash and returns an Discography" do
        expect(disco).to be_an Discography
      end
    end

    describe "#albums" do
      it "returns an array of albums" do
        expect(disco.albums).to be_a Array
      end

      it "has a collection of albums" do
        disco.albums.each { |a| expect(a).to be_a Album }
      end
    end

    describe "#to_json" do
      it "returns json" do
        expect(disco.to_json).to be_json
      end
    end

  end
end
