class Tag
  include DataMapper::Resource # Provides basic crud operations

  # Set columns and data types
  property :id, Serial # Auto increment interger
  property :name, String
  has n, :linktags
  has n, :links, :through => :linktags
end
