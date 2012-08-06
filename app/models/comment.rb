class Comment < ActiveRecord::Base
  
  attr_accessible :content, :username, :post_id, :post
  belongs_to :post

  validates_presence_of :content

end
