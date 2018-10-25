require 'rails_helper'

describe 'user can add a song' do

  it 'to the cart' do

    artist = Artist.create(name: "Weird Al")
    song = artist.songs.create(title: "Eat it",
            length: 250, play_count: 1000)

    visit songs_path

    expect(page).to have_content("Eat it")
    expect(page).to have_content('1000')
    expect(page).to have_content("Add Song to Cart")

    save_and_open_page
    # click_on "Add Song to Cart"

    # expect(current_path).to eq(song_path(song))
  end

end
