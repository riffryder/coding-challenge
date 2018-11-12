class Comment < ApplicationRecord
  #establish 1:1 association to post table
  belongs_to :post
end