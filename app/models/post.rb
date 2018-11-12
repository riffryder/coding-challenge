class Post < ApplicationRecord
  #establish 1:M association with comments and establish depedency for post deletion
  has_many :comments, dependent: :destroy

  # search method to look through blog title and body
  def self.search(search)
    if search
      where('title LIKE ? OR body LIKE ?', "%#{search}%", "%#{search}%")
    else
      all
    end
  end
  
end
