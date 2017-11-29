ENV['RACK_ENV'] ||= 'development'
require 'sinatra/base'
require_relative 'models/data_mapper_setup'

class BookmarkManager < Sinatra::Base
  get '/links' do
    @links = Link.all # Return all links
    erb :'links/index'
  end

  post '/links' do

    link = Link.create(url: params[:url], title: params[:title]) # Create link
    tag = Tag.first_or_create(name: params[:tags]); # Create a tag for the link
    link.tags << tag # Adding the tag to the link's DataMapper collection.
    link.save # Save link to tag
    redirect '/links'
  end

  get '/links/new' do
    erb :'links/new'
  end

  # Tags

  get '/tags' do
    @tags = Tag.all
    erb :'tags/index'
  end

  get '/tags/new' do
    erb :'tags/new'
  end

  post '/tags' do

    name = params[:name]
    if(!name.empty?) # stop
      tag = Tag.new(name: params[:name]);
      tag.save # Save link to tag
    end
    redirect '/tags'
  end


  # start the server if ruby file executed directly
  run! if app_file == $PROGRAM_NAME
end
