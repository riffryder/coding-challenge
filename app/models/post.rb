class Post < ApplicationRecord
  has_many :comments, dependent: :destroy

  def self.search(search)
    if search
      where('title LIKE ? OR body LIKE ?', "%#{search}%", "%#{search}%")
    else
      all
    end
  end
  
end
