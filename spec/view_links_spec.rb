feature 'View links' do
  scenario 'View all bookmarks' do
    Link.create(url: 'http://www.makersacademy.com',title: 'Makers Academy')
    visit '/links'
    expect(page.status_code).to eq 200 #200 return if success
    witin('ul#links')do
      # search for text with ul with id links
      expect(page).to have_content('Makers Academy')
    end
  end
  scenario 'Create a new bookmark' do
    visit '/links/new'
    fill_in 'url',   with: 'http://www.zombo.com/'
    fill_in 'title', with: 'This is Zombocom'
    click_button 'Create link'
    expect(current_path).to eq('/links')
    within 'ul#links' do
      expect(page).to have_content('This is Zombocom')
    end
  end
end
