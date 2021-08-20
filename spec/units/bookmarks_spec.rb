require 'bookmarks'
require 'setup_test_database'

describe Bookmarks do
  describe '#self.all' do
    # conn = PG.connect(dbname: 'bookmark_manager_test')

    bookmark = Bookmarks.create(url: 'https://www.mozilla.org/en-GB/', title: 'Firefox')
    Bookmarks.create(url: 'https://ruby-doc.org/', title: 'Ruby Bible')
    Bookmarks.create(url: 'https://www.codewars.com/', title: 'Codewars')
    Bookmarks.create(url: 'http://www.makersacademy.com', title: 'Makers')

    bookmark = Bookmarks.all
    it 'returns all bookmarks' do
      expect(bookmark.length).to eq 4
      expect(bookmark.first).to be_a Bookmarks
      expect(bookmark.first.id).to eq bookmark.id
      expect(bookmark.first.title).to eq 'Firefox'
      expect(bookmark.first.url).to eq 'https://www.mozilla.org/en-GB/'
    end
  end

  describe '#Bookmark.create' do

    it 'adds bookmarks to bookmark_manager database' do
      bookmark = Bookmarks.create(url: 'https://www.google.com', title: 'Google')
      presised_date =  PG.connect(dbname: 'bookmark_manager_test').query("SELECT * FROM bookmarks WHERE id = #{bookmark.id};")
      expect(bookmark).to be_a Bookmarks
      expect(bookmark.id).to persisted_data.first['id']
      expect(bookmark.title).to eq 'Google'
      expect(bookmark.url).to eq 'https://www.google.com'
    end
  end
end