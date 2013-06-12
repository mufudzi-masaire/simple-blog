class Post
  include Mongoid::Document
  include Mongoid::Timestamps
  
  field :author, type: String
  field :title, type: String
  field :content, type: String
  field :_id, type: String, default: ->{ title.to_s.parameterize }
  
  validates :author, presence: true, uniqueness: true
  validates :title, presence: true, uniqueness: true
  validates :content, presence: true

end
