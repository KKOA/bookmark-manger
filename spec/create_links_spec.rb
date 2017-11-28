feature 'Create links' do
  scenario 'No links' do
    visit '/links'
    click_link 'New Link'
    fill_in 'url',   with: 'https://www.facebook.com/'
    fill_in 'title', with: 'Facebook'
    click_button 'Create link'
    expect(current_path).to eq('/links')
    within 'ul#links' do
      expect(page).to have_content('Facebook')
    end
  end
  scenario 'Links exist' do
    visit '/links'
    click_link 'New Link'
    fill_in 'url',   with: 'http://www.google.com/'
    fill_in 'title', with: 'Google'
    click_button 'Create link'
    expect(current_path).to eq('/links')
    within 'ul#links' do
      expect(page).to have_content('Google')
    end
  end
end
