require_relative './lib/bookmarks'
require 'sinatra/base'
require 'sinatra/reloader'

class BookmarkManager < Sinatra::Base
  configure :development do
    register Sinatra::Reloader
  end

  get '/' do
    erb(:'bookmarks/index')
  end

  get '/bookmarks/add' do
    erb(:'bookmarks/add')
  end

  post '/' do

  end

  get '/bookmarks/view' do
    @bookmarks = Bookmarks.all
    erb(:'bookmarks/views')
  end
  
  run! if app_file == $0

end