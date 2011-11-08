class Category < ActiveRecord::Base
	belongs_to :user	
	attr_accessible :category
	
	has_and_belongs_to_many :micropost
end
