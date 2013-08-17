require 'support/be_json'
require 'multi_json'
require 'bandcamp/band'
require 'bandcamp/album'
require 'bandcamp/discography'
require 'pry'

module Bandcamp
  describe Discography do

    let(:disco_hash){ MultiJson.decode File.read(File.join %w(spec fixtures discography.json)) }
    let(:disco){ Discography.new(disco_hash) }

    #it "includes the Associated Module" do
    #  expect(disco.private_methods).to include :retrieve_associated
    #end

    describe ".new" do

      it "accepts a hash and returns an Discography" do
        expect(disco).to be_an Discography
      end

     # it "creates methods based on the hash" do
     #   expect(Album.new(foo: "bar").foo).to eq "bar"
     # end
    end

    describe "#albums" do
      it "returns an array of albums" do
        expect(disco.albums).to be_a Array
        pry binding
      end
    end

    describe "#to_json" do
      it "returns json" do
        expect(disco.to_json).to be_json
      end
    end

  end
end
