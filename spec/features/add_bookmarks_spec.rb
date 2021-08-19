feature 'adding bookmarks' do

  scenario 'able to add bookmarks in form' do
    visit '/bookmarks/add'
    fill_in :url_submit, with: 'https://freeyourbones.com'
    expect(page).to have_selector(:link_or_button, 'Add Bookmark')
  end

  scenario 'successfully added bookmark' do
    visit '/bookmarks/add'
    click_button 'Add Bookmark'
    expect(page).to have_content 'https://freeyourbones.com'
  end
end