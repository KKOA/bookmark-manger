feature 'View links' do
  scenario 'No links exist' do
    visit '/links'
    expect(page.status_code).to eq 200 #200 return if success
    expect(page).to have_content('No links avaliable')
  end
end
