class Peep < ActiveRecord::Base
	mount_uploader :image, ImageUploader
	validates :name,	presence: true
	validates :description,	presence: true
	validates :descriptionca,	presence: true
	validates :carrec,	presence: true
	validates :carrecca,	presence: true

end
