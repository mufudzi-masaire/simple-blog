class Post
  include Mongoid::Document
  include Mongoid::Timestamps
  
  field :title, type: String
  field :content, type: String
  #field :_id, type: String, default: => { title }
  
  validates_presence_of :title, uniqueness: true
  validates_presence_of :content

end
