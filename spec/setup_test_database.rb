require 'pg'

def setup_test_database

  p 'Setting up test database...'

  conn = PG.connect(dbname: 'bookmark_manager_test')
  conn.exec("TRUNCATE bookmarks;")
end

def persisted_data(id:)
  conn = PG.connect(dbname: 'bookmark_manager_test')
  result = conn.query("SELECT * FROM bookmarks WHERE id = #{id};")
  result.first
end