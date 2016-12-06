module MoviesHelper
	def format_price(price)
		if price < 500000
			#"<strong>Free</strong>".html_safe
			content_tag(:strong, 'Flop')
		else
			number_to_currency(price, unit: "€", separator: ",", delimiter: ".", format: "%n %u")
		end
	end
end
