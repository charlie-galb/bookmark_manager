require 'sinatra/base'
require './model/bookmarks'
require 'pg'

class BookmarkManager < Sinatra::Base

  before do
    @bookmarks = Bookmarks.all
  end

  get '/bookmarks' do
    erb(:bookmarks)
  end

  run! if app_file == $0
end
