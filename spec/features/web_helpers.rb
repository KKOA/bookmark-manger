def fill_new_link(url, title, tags='')
  fill_in 'url',   with: url
  fill_in 'title', with: title
  fill_in 'tags', with: tags
  click_button 'Create link'
end
