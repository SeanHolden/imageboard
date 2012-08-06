class Post < ActiveRecord::Base
  has_many :comments, dependent: :destroy
  attr_accessible :content, :username, :photo

  has_attached_file :photo, :styles => { :small => "150x150" }

end
