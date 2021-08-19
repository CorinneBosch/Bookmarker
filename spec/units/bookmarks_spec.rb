require 'bookmarks'

describe Bookmarks do

  context '#self.all' do
    conn = PG.connect(dbname: 'bookmark_manager_test')
    conn.exec("INSERT INTO bookmarks (url) VALUES('https://www.mozilla.org/en-GB/');")
    conn.exec("INSERT INTO bookmarks (url) VALUES('https://ruby-doc.org/');")
    conn.exec("INSERT INTO bookmarks (url) VALUES('https://www.codewars.com/');")
    conn.exec("INSERT INTO bookmarks (url) VALUES('http://www.makersacademy.com');")

    it 'returns all bookmarks' do
      expect(subject).to include("https://www.mozilla.org/en-GB/")
      expect(subject).to include("https://ruby-doc.org/")
      expect(subject).to include("https://www.codewars.com/")
      expect(subject).to include("http://www.makersacademy.com")
    end
  end

  context '#Bookmark.create' do
    it 'adds bookmarks to bookmark_manager database' do
      # connect to database test
      # insert url in db
      # check its there :)
    end
  end
end