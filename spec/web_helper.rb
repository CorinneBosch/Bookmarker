def sign_in
  visit('/')
end

def add_bookmark
  visit('/bookmarks/add')
  fill_in :url_submit, with: 'https://freeyourbones.com'
end