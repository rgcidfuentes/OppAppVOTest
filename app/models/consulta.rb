class Consulta < ActiveRecord::Base
	before_save { self.email = email.downcase }

	validates :name,	presence: true
	VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
	validates :email, 	presence: true, format: { with: VALID_EMAIL_REGEX }
	validates :asunto,	presence: true
	validates :message,	presence: true

end

