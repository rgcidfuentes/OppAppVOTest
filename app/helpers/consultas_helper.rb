module ConsultasHelper
	def mapCat2(latitude, longitude)
	    part1 = 'http://maps.googleapis.com/maps/api/staticmap?&zoom=15&size=470x430&maptype=roadmap&markers=color:blue%7C'
	    part3 = "&sensor=false"
	    output = part1 + latitude.to_s + ","+longitude.to_s + part3
	    output
	  end
end
