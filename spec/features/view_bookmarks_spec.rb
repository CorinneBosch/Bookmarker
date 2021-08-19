require 'pg'

feature 'View bookmarks' do
  scenario 'able to view the bookmarks' do

    conn = PG.connect(dbname: 'bookmark_manager_test')
    conn.exec("INSERT INTO bookmarks VALUES(1, 'https://www.mozilla.org/en-GB/');")
    conn.exec("INSERT INTO bookmarks VALUES(2, 'https://ruby-doc.org/');")
    conn.exec("INSERT INTO bookmarks VALUES(3, 'https://www.codewars.com/');")
    conn.exec("INSERT INTO bookmarks VALUES(4, 'http://www.makersacademy.com');")

    visit('/bookmarks')

    expect(page).to have_content("https://www.mozilla.org/en-GB/")
    expect(page).to have_content("https://ruby-doc.org/")
    expect(page).to have_content("https://www.codewars.com/")
  end
end
