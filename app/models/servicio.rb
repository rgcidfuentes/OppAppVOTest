class Servicio < ActiveRecord::Base
	#attr_accessible :name, :description, :image
	mount_uploader :image, ImageUploader
	validates :name,	presence: true
	validates :nameca,	presence: true
	validates :description,	presence: true
	validates :descriptionca,	presence: true
end
