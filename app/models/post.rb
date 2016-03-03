class Post < ActiveRecord::Base
  belongs_to :category
  
  def self.search(search)
  	where("title LIKE ?", "%#{search}%")
  	 where("content LIKE ?", "%#{search}%")
  end
end
