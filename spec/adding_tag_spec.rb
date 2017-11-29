feature 'Add Tag' do
  scenario 'New links with tag' do
    visit '/links'
    click_link 'New Link'
    url = 'https://www.facebook.com/'
    title = 'Facebook'
    tags = 'bubble'
    fill_new_link(url,title,tags)
    link = Link.first # Get first record
    expect(link.tags.map(&:name)).to include('bubble')
    # Check stored in the database
    expect(current_path).to eq('/links')
    within 'li#link1' do
      expect(page).to have_content('bubble')
    end
  end
end
