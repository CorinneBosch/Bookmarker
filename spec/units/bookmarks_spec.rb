require 'bookmarks'

describe Bookmarks do

  let(:bookmarks) { Bookmarks.all }

  context '#self.all' do
    it 'returns all bookmarks' do
      expect(bookmarks).to include("https://www.mozilla.org/en-GB/")
      expect(bookmarks).to include("https://ruby-doc.org/")
      expect(bookmarks).to include("https://www.codewars.com/")
      expect(bookmarks).to include("http://www.makersacademy.com")
    end
  end
end