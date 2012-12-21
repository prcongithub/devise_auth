module ApplicationHelper
	# helper method use in views to render title tag content
	def title
		if defined?(@title)
			return @title
		else	
			return "Online Orders"
		end
	end
	
	# helper method use in views to render logo image
	def logo
		s = image_tag('rails.png', :alt => "Online Orders Application")
		return s
	end
end
