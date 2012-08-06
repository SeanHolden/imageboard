class Comment < ActiveRecord::Base
  
  attr_accessible :content, :username, :post_id, :post, :photo
  belongs_to :post

  has_attached_file :photo, :styles => { :small => "150x150" },
                    :url => "/assets/:class/:attachment/:id/:style/:filename",
                    :path => ":rails_root/public:url"

  validates_presence_of :content

end
