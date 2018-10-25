require 'rails_helper'
# spec/models/playlist_song_spec.rb
describe PlaylistSong, type: :model do
  describe 'Relationship' do
    it { should belong_to(:song) }
    it { should belong_to(:playlist) }
  end
end
