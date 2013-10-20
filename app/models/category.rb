class Category < ActiveRecord::Base
  has_and_belongs_to_many :posts, :uniq => true
  validates_presence_of :name
end
