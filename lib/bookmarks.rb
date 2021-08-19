require 'pg'

class Bookmarks

  def self.all
    conn = PG.connect(dbname: 'bookmark_manager')
    result = conn.exec('SELECT * FROM bookmarks')
    result.map { |bookmarks| bookmarks['url'] }
  end

  def self.create(url:)
    if ENV['ENVIRONMENT'] == 'test'
      conn = PG.connect(dbname: 'bookmark_manager_test')
    else
      conn = PG.connect(dbname: 'bookmark_manager')
    end

    conn.exec("INSERT INTO bookmarks (url) VALUES('#{url}')")
  end
end

# puts Bookmarks.new.all
# puts Bookmarks.all