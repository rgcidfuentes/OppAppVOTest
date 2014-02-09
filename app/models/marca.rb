class Marca < ActiveRecord::Base
	#mount_uploader :image, ImageUploader
	validates :name,	presence: true
	validates :image,	presence: true
end
