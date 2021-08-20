require 'pg'
require 'bookmarks'

feature 'View bookmarks' do
  scenario 'able to view the bookmarks' do

    Bookmarks.create(url: 'https://www.mozilla.org/en-GB/', title: 'Firefox')
    Bookmarks.create(url: 'https://ruby-doc.org/', title: 'Ruby Bible')
    Bookmarks.create(url: 'https://www.codewars.com/', title: 'Codewars')
    Bookmarks.create(url: 'http://www.makersacademy.com', title: 'Makers')

    visit('/bookmarks/view')

    expect(page).to have_link('Firefox', href: "https://www.mozilla.org/en-GB/")
    expect(page).to have_link('Ruby Bible', href: "https://ruby-doc.org/")
    expect(page).to have_link('Codewars', href: "https://www.codewars.com/")
    expect(page).to have_link('Makers', href: "http://www.makersacademy.com")
  end
end
