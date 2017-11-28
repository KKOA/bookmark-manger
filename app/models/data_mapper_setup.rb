require 'data_mapper'
require 'dm-postgres-adapter'

# Require Models
require_relative 'link'

# Database credintials
user = 'keith'
pass = 'makersacademy'
host = 'localhost'
db = "bookmark_manager_#{ENV['RACK_ENV']}"

# Set up database connection
DataMapper.setup(:default, "postgres://#{user}:#{pass}@#{host}/#{db}")

# Validate structure and syntax is correct
DataMapper.finalize

# Build new columns or tables added
DataMapper.auto_upgrade!
