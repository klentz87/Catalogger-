class Book < ApplicationRecord
	mount_uploader :image, ImageUploader
###	validate :isbn_length   <-- going in another direction with the ISBN field

	belongs_to :genre, optional: true

	has_many :book_tags
	has_many :tags, through: :book_tags


#	private
#
#	def isbn_length
#		if isbn.length != 10 || isbn.length != 13 || isbn.length != 0
#			errors.add(:isbn, "must be 10 or 13 characters. If there is no ISBN, please leave blank.")
#		end
#	end	
#### ^ screws up anyway ^ ####

end
