require 'rails_helper'

describe 'user can create an artist' do

  it 'when visiting /artists/new' do

    visit 'artists/new'

    artist_name ='Nickelback'

    fill_in 'artist[name]', with:artist_name

    click_on "Create Artist"

    expect(page).to have_content(artist_name)
    expect(current_path).to eq("/artists/#{Artist.last.id}")
  end

end
