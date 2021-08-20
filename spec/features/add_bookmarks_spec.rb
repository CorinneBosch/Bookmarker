require 'web_helper'
feature 'adding bookmarks' do

  scenario 'able to add bookmarks in form' do
    visit '/bookmarks/add'
    fill_in :title, with: 'Bones Bookmark'
    fill_in :url_submit, with: 'https://freeyourbones.com'
    expect(page).to have_selector(:link_or_button, 'Add Bookmark')
  end

  scenario 'successfully added bookmark' do
    add_bookmark
    click_on 'Add Bookmark'
    expect(page).to have_link('Bones Bookmark', href: 'https://freeyourbones.com')
  end
end