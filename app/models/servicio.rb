class Servicio < ActiveRecord::Base
	#attr_accessible :name, :description, :image
	mount_uploader :image, ImageUploader
	validates :name,	presence: true
	validates :description,	presence: true
end
