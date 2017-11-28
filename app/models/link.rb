class Link
  include DataMapper::Resource # Provides basic crud operations

  # Set columns and data types
  property :id, Serial # Auto increment interger
  property :title, String
  property :url, String
end
