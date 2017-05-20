#require "bundler/setup"

require 'sinatra/base'
require 'json'
require './lib/library'

class BookshelfApp < Sinatra::Base

  configure do
    set :library, Library.new('bookshelf')
  end

  get '/' do 
    erb :index
  end

  get '/add' do 
    erb :add
  end

  #get '/books.json' do
  #  content_type :json
  #  { :book1 => 'Ruby Programming', :book2 => 'Java Programming' }.to_json
  #end

  post '/' do
    books = settings.library.search_by_title(params[:booktitle])
    total = settings.library.countbooks
    erb :results, locals: { books: books, message: "Library has found:", total: total }
  end

  post '/add' do
    settings.library.add_book(params[:booktitle])
    total = settings.library.countbooks
    erb :results, locals: { books: [params[:booktitle]], message: "Library contains:", total: total }
  end

  run! if app_file == $0
end
