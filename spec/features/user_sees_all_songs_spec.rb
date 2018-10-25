require 'rails_helper'

describe 'user index' do
  it 'user_can_see_all_songs' do
    artist = Artist.create(name: 'Journey')
    # song_1 = artist.songs.create(title: "Don't Stop Believin'", length: 303, play_count:123_456)
    # song_2 = artist.songs.create(title: "Never Gonna Give You Up", length: 253, play_count:987_654_321)
    song_1, song_2 = create_list(:song, 2)

    visit '/songs'

    expect(page).to have_content(song_1.title)
    expect(page).to have_content("Plays: #{song_1.play_count}")
    expect(page).to have_content(song_2.title)
    expect(page).to have_content("Plays: #{song_2.play_count}")
  end
end
