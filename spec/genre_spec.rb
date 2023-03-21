require 'spec_helper'

describe Genre do
  describe '#add_item' do
    it "adds the item to the genre's items array" do
      genre = Genre.new('Rock')
      album = MusicAlbum.new('2022-01-01', true)
      genre.add_item(album)
      expect(genre.items).to include(album)
    end

    it "sets the item's genre to the genre object" do
      genre = Genre.new('Rock')
      album = MusicAlbum.new('2022-01-01', true)
      genre.add_item(album)
      expect(album.genre).to eq(genre)
    end
  end
end
