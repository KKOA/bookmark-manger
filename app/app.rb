ENV['RACK_ENV'] ||= 'development'
require 'sinatra/base'
require_relative 'models/data_mapper_setup'

class BookmarkManager < Sinatra::Base
  get '/links' do
    @links = Link.all # Return all links
    erb :'links/index'
  end

  post '/links' do
    Link.create(url: params[:url], title: params[:title])
    redirect '/links'
  end

  get '/links/new' do
    erb :'links/new'
  end

  # start the server if ruby file executed directly
  run! if app_file == $PROGRAM_NAME
end
