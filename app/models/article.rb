class Article < ActiveRecord::Base
  attr_accessible :title, :content, :parent, :parent_id, :author
  belongs_to :parent, :class_name => "Article"
  belongs_to :author, :class_name => "User"
  has_many :replies,  :class_name => "Article",
                      :foreign_key => "parent_id"

  has_paper_trail
end
