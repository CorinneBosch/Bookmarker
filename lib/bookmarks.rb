require 'pg'

class Bookmarks

  def self.all
    conn = PG.connect(dbname: 'bookmark_manager')
    result = conn.exec('SELECT * FROM bookmarks')
    result.map { |bookmarks| bookmarks['url'] }
  end
end

# puts Bookmarks.new.all
# puts Bookmarks.all