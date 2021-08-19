require 'web_helper'

feature 'Index landing page' do

  before :each do
    visit ('/')
  end

  scenario 'expects page to have add bookmark button' do
    expect(page).to have_selector(:link_or_button, 'Add Bookmark')
  end

  scenario 'expects page to have view bookmarks button' do
    expect(page).to have_selector(:link_or_button, 'View Bookmarks')
  end
end