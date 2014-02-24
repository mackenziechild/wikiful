class Category < ActiveRecord::Base
	has_many :article_categories
	has_many :articles, through: :article_categories
	validate_uniqueness_of :name
end
