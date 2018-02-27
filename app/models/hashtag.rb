class Hashtag < ApplicationRecord
	has_many :books, through: :book_hashtags
	has_many :book_hashtags
end
