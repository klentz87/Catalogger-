class Book < ApplicationRecord
	mount_uploader :image, ImageUploader
###	validate :isbn_length   <-- going in another direction with the ISBN field

	belongs_to :genre, optional: true

#	private
#
#	def isbn_length
#		if isbn.length != 10 || isbn.length != 13 || isbn.length != 0
#			errors.add(:isbn, "must be 10 or 13 characters. If there is no ISBN, please leave blank.")
#		end
#	end	
#### ^ screws up anyway ^ ####

end
