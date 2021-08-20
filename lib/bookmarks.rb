require 'pg'

class Bookmarks
  attr_reader :id, :title, :url

  def initialize(id:, title:, url:)
    @id  = id
    @title = title
    @url = url
  end

  def self.all
    if ENV['ENVIRONMENT'] == 'test'
      conn = PG.connect(dbname: 'bookmark_manager_test')
    else
      conn = PG.connect(dbname: 'bookmark_manager')
    end
    result = conn.exec('SELECT * FROM bookmarks')
    result.map do |bookmark|
      Bookmarks.new(id: bookmark['id'], title: bookmark['title'], url: bookmark['url'])
    end
  end

  def self.create(url:, title:)
    if ENV['ENVIRONMENT'] == 'test'
      conn = PG.connect(dbname: 'bookmark_manager_test')
    else
      conn = PG.connect(dbname: 'bookmark_manager')
    end

    result = conn.exec("INSERT INTO bookmarks (title, url) VALUES('#{title}', '#{url}') RETURNING id, url, title;")
    Bookmarks.new(id: result[0]['id'], title: result[0]['title'], url: result[0]['url'])
  end
end

# puts Bookmarks.new.all
# puts Bookmarks.all