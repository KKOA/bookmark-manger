feature 'Create links' do
  scenario 'No links' do
    visit '/links'
    click_link 'New Link'
    url = 'https://www.facebook.com/'
    title = 'Facebook'
    fill_new_link(url,title)
    expect(current_path).to eq('/links')
    within 'li#link2' do
      expect(page).to have_content('Facebook')
    end
  end
  scenario 'Links exist' do
    Link.create(title: 'Facebook', url:'https://www.facebook.com/')
    visit '/links'
    click_link 'New Link'
    url = 'http://www.google.com/'
    title = 'Google'
    fill_new_link(url,title)
    expect(current_path).to eq('/links')
    within 'li#link4' do
      expect(page).to have_content('Google')
    end
  end
end
