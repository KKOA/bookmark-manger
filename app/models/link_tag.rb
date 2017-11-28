class Linktag
  include DataMapper::Resource

  belongs_to :tag,   :key => true
  belongs_to :link, :key => true
end
