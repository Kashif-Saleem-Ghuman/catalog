require 'spec_helper'

describe MusicAlbum do
  describe '#can_be_archived?' do
    it 'returns true if super returns true and @on_spotify is true' do
      album = MusicAlbum.new('2002-01-01', true)
      expect(album.can_be_archived?).to be true
    end

    it 'returns false if super returns false and @on_spotify is true' do
      album = MusicAlbum.new('2022-01-01', true)
      expect(album.can_be_archived?).to be false
    end

    it 'returns false if @on_spotify is false' do
      album = MusicAlbum.new('2002-01-01', false)
      expect(album.can_be_archived?).to be false
    end
  end
end
