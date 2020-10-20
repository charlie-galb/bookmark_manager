require 'sinatra/base'
require_relative 'model/bookmarks'
require 'pg'

class BookmarkManager < Sinatra::Base

  before do
    @bookmarks = Bookmarks.all
  end
  get '/' do
    erb(:index)
  end

  get '/bookmarks' do
    erb(:bookmarks)
  end

  run! if app_file == $0
end
