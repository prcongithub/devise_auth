module ProductsHelper

	def get_product_options
		hash = {}
		Product.all.each{|x|
			hash[x.name] =  x.id
		}
		hash
	end
	
end
