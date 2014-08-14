module BannersHelper
	def checker place
		image_tag 'checker.gif' if place
	end
end