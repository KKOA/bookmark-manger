require 'data_mapper'
require 'dm-postgres-adapter'

# Require Models
require_relative 'link'
require_relative 'link_tag'
require_relative 'tag'

# Database credintials
user = 'keith'
pass = 'makersacademy'
host = 'localhost'
db = "bookmark_manager_#{ENV['RACK_ENV']}"
localsource = "postgres://#{user}:#{pass}@#{host}/#{db}"
# Set up database connection
DataMapper.setup(:default, ENV['DATABASE_URL'] || localsource)
#see https://devcenter.heroku.com/articles/rack#using-datamapper-or-sequel

# Validate structure and syntax is correct
DataMapper.finalize

# Build new columns or tables added
DataMapper.auto_upgrade!
