require 'data_mapper'
require 'dm-postgres-adapter'

class Link
  include DataMapper::Resource #Provides basic crud operations

  # Set columns and data types
  property :id, Serial # Auto increment interger
  property :title, String
  property :url, String
end

# Database credintials
user = 'keith'
pass ='makersacademy'
host = 'localhost'
db = 'bookmark_manager_test'

#Set up database connection
DataMapper.setup(:default, "postgres://#{user}:#{pass}@#{host}/#{db}")

# Validate structure and syntax is correct
DataMapper.finalize

#Build new columns or tables added
DataMapper.auto_upgrade!
