require 'bookmarks'

describe Bookmarks do

  let(:bookmarks) { Bookmarks.all}
  context '#self.all' do
    conn = PG.connect(dbname: 'bookmark_manager_test')
    conn.exec("INSERT INTO bookmarks (url) VALUES('https://www.mozilla.org/en-GB/');")
    conn.exec("INSERT INTO bookmarks (url) VALUES('https://ruby-doc.org/');")
    conn.exec("INSERT INTO bookmarks (url) VALUES('https://www.codewars.com/');")
    conn.exec("INSERT INTO bookmarks (url) VALUES('http://www.makersacademy.com');")

    it 'returns all bookmarks' do
      expect(bookmarks).to include("https://www.mozilla.org/en-GB/")
      expect(bookmarks).to include("https://ruby-doc.org/")
      expect(bookmarks).to include("https://www.codewars.com/")
      expect(bookmarks).to include("http://www.makersacademy.com")
    end
  end

  context '#Bookmark.create' do

    it 'adds bookmarks to bookmark_manager database' do
      Bookmarks.create(url: 'https;//www.google.com')
      expect(bookmarks).to include('https;//www.google.com')
    end
  end
end