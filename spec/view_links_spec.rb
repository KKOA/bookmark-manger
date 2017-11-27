feature 'View links' do
  scenario '' do
    Link.create(url: 'http://www.makersacademy.com',title: 'Makers Academy')
    visit '/links'
    expect(page.status_code).to eq 200 #200 return if success
    witin('ul#links')do
      # search for text with ul with id links
      expect(page).to have_content('Makers Academy')
    end
  end
end
