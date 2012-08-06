class Post < ActiveRecord::Base
  has_many :comments, dependent: :destroy
  attr_accessible :content, :username, :photo

  has_attached_file :photo, :styles => { :small => "150x150" },
                   # :url => "/system/:class/:attachment/:id_partition/:style/:filename",
                   # :path => ":rails_root/public:url"
                    :url => "/assets/:class/:attachment/:id/:style/:filename",
                    :path => ":rails_root/public:url"
                   

end
